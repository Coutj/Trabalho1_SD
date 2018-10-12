----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:21 09/14/2018 
-- Design Name: 
-- Module Name:    multiplicador - Behavioral 
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

entity multiplicador is

	port (	entradaA : in 	std_logic_vector (3 downto 0);
				entradaB	: in 	std_logic_vector (3 downto 0);
				saida		: out	std_logic_vector (7 downto 0)
	);

end multiplicador;

architecture multiplicadorArch of multiplicador is


	component somador8Bits is

		port (	numA8Bits		:in		std_logic_vector (7 downto 0);
					numB8Bits		:in		std_logic_vector (7 downto 0);
					cIn				:in		std_logic;
					cOut				:out		std_logic;
					resultado8Bits	:out		std_logic_vector (7 downto 0)
		);
	end component;

	signal carryOut1, carryOut2, carryOut3 : std_logic;
	signal somaParcial1, somaParcial2 : std_logic_vector (7 downto 0);
	
	signal resultParcial1,resultParcial2,
	resultParcial3,resultParcial4 : std_logic_vector (7 downto 0);

begin

	somador1 : somador8Bits port map (resultParcial1, resultParcial2, '0', carryOut1, somaParcial1);
	somador2 : somador8Bits port map (resultParcial3, resultParcial4, carryOut1, carryOut2, somaParcial2);
	somador3 : somador8Bits port map (somaParcial1, somaParcial2, carryOut2, carryOut3 , saida);

	MultiProcess : process(entradaA, entradaB) is 
		
		begin	
		
			resultParcial1 <= "00000000";
			resultParcial2 <= "00000000";
			resultParcial3 <= "00000000";
			resultParcial4 <= "00000000";
		
			if entradaB(0) = '1' then				
				resultParcial1(3 downto 0) <= entradaA;			
			end if;
			
			if entradaB(1) = '1' then			
				resultParcial2(4 downto 1) <= entradaA;
			end if;
			
			if entradaB(2) = '1' then
				resultParcial3(5 downto 2) <= entradaA;
			end if;
			
			if entradaB(3) = '1' then			
				resultParcial4(6 downto 3) <= entradaA;	
			end if;
	
	end process MultiProcess;	
			
end multiplicadorArch;
