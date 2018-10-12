----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:47:13 09/28/2018 
-- Design Name: 
-- Module Name:    ULA_Test - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ULA_Test is
	
		port (	entrada							:	in		std_logic_vector (3 downto 0) := (others => '0');
					setA, setB, reset				: 	in		std_logic := '0';
					CLKIN								:	in		std_logic := '0';
					carryOut, overflow				:	out	std_logic := '0';
					saida								:	out	std_logic_vector (7 downto 0) := (others => '0')
		);

	
end ULA_Test;

architecture ULA_TestArch of ULA_Test is

	component contador2segundos is
		
		port (	clockIn	: in std_logic;
					start		:	in std_logic;
					tempoLimite	: out std_logic
			);

	end component;

	component contador is		--	divisor de clock
		
		port(		CLK : in std_logic;
					saida : out std_logic
		);
		
	end component;
		
	component ULA is
		port (	entradaA,entradaB, controle	:	in		std_logic_vector (3 downto 0);
					carryOut, overflow					:	out	std_logic;
					saidaULA								:	out	std_logic_vector (7 downto 0)
		);
	end component;

	--Inputs da ULA
	signal numeroA, numeroB, controle : std_logic_vector(3 downto 0) := (others => '0');
		
	type estado_type is (E0, E1, E2, E3, E4);
	signal estado: estado_type;
	
	--Clock normalizado
	signal CLKOUT : std_logic;
	
	signal saidaUla : std_logic_vector (7 downto 0) := (others => '0');
	
	--Contador 2 segundos
	signal start, tempoLimite : std_logic := '0';

begin
	
	Ula1 : ULA port map (numeroA, numeroB, controle, carryOut, overflow, saidaUla);
	controle <= entrada;
	
	Clock : contador port map (CLKIN, CLKOUT);
	
	Contar2segundos : contador2segundos port map (CLKOUT, start, tempoLimite);
	
	
	MaquinaEstados: process (CLKOUT, entrada) is
	
	begin		
	
		if ((CLKOUT'event) and (CLKOUT ='1')) then -- somador
		
			if (reset = '1') then
				estado <= E0;
				saida <= "00000000";
			else
			
				case estado is
				
					when E0 =>							--recebeA
						if (setA = '1') then			
							numeroA 	<= entrada;
							estado 	<= E1;
						else
							estado 	<= E0;
						end if;
					
					when E1 =>							--recebeB
						if (setB = '1') then
							numeroB 	<= entrada;
							estado 	<= E2;
						else
							estado 	<= E1;
						end if;
					
					when E2 => 							--mostraA
					
						saida(7 downto 4) <= numeroA;
						saida(0)				<= '1';
						start 				<= '1';
						
						if (tempoLimite = '1') then
							start 	<= '0';
							saida 	<= "00000000";
							estado 	<= E3;
						else
							estado 	<= E2;
						end if;

					when E3 =>							--mostraB
					
						saida(7 downto 4) <= numeroB;
						saida(1 downto 0)	<= "10";
						start 				<= '1';
						
						if (tempoLimite = '1') then
							start 	<= '0';
							saida 	<= "00000000";
							estado 	<= E4;
						else
							estado 	<= E3;
						end if;
					
					when E4 =>							--Mostra resultado
					
						saida <= saidaUla;
						start <= '1';
						
						if (saidaUla = "00000000") then		--Apresentando 0
							saida	<= "11111111";
						end if;
					
						if (tempoLimite = '1') then
							start 	<= '0';
							saida 	<= "00000000";
							estado 	<= E2;
						else
							estado <= E4;
						end if;
					
				end case;
			
			end if;
		
		end if;
	
	end process MaquinaEstados;	

end ULA_TestArch;

