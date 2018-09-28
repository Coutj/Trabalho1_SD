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
	
		port (	
		entrada							:	in		std_logic_vector (3 downto 0);
		setA, setB, setCtrl, reset	: 	in		std_logic;
		CLK								:	in		std_logic;
		carryOut, overflow				:	out	std_logic;
		saida								:	out	std_logic_vector (7 downto 0)
		
	);

	
end ULA_Test;

architecture ULA_TestArch of ULA_Test is

	
	component ULA is
		port (	
			entradaA,entradaB, controle	:	in		std_logic_vector (3 downto 0);
			carryOut, overflow					:	out	std_logic;
			saida									:	out	std_logic_vector (7 downto 0)
		);
	end component;


	signal numeroA, numeroB, controle : std_logic_vector(3 downto 0);
	
		
	type estado_type is (E0, E1, E2, E3);
	signal estado: estado_type;

begin

	
	ula1 : ULA port map (numeroA, numeroB, controle, carryOut, overflow, saida);
	controle <= entrada;
	
	
	Reg0: process (CLK) is
	
	begin	
	
		if ((CLK'event) and (CLK ='1')) then -- somador
		
			if (reset = '1') then
				estado <= E0;	
			else
			
				case estado is
				
					when E0 =>
						numeroA <= entrada;
						if (setA = '1') then
							estado <= E1;
						else
							estado <= E0;
						end if;
					
					when E1 =>
						numeroB <= entrada;
						if (setB = '1') then
							estado <= E2;
						else
							estado <= E1;
						end if;
					
					when E2 =>
					
						
						
					
				end case;
			
			end if;
		
		end if;
	
	end process Reg0;	

end ULA_TestArch;

