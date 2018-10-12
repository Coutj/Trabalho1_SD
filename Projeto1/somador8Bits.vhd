----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:01:03 09/14/2018 
-- Design Name: 
-- Module Name:    somador8Bits - Behavioral 
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

entity somador8Bits is

	port (	numA8Bits		:in		std_logic_vector (7 downto 0);
				numB8Bits		:in		std_logic_vector (7 downto 0);
				cIn				:in		std_logic;
				cOut				:out		std_logic;
				resultado8Bits	:out		std_logic_vector (7 downto 0)
	);
	
end somador8Bits;

architecture somador8BitsArch of somador8Bits is

	component somador4Bits is
		
		port (	numA4Bits		:in		std_logic_vector (3 downto 0);
					numB4Bits		:in		std_logic_vector (3 downto 0);
					cIn				:in		std_logic;
					cOut				:out		std_logic;
					resultado4Bits	:out		std_logic_vector (3 downto 0)
		);
					
	end component;
	
	signal carryOut1, carryOut2 : std_logic;
	
begin
	
	somador1 : Somador4Bits port map (numA8Bits (3 downto 0), numB8Bits (3 downto 0), '0', carryOut1, resultado8Bits (3 downto 0));
	somador2 : Somador4Bits port map (numA8Bits (7 downto 4), numB8Bits (7 downto 4), carryOut1, carryOut2 , resultado8Bits (7 downto 4));

	cOut <= carryOut2;
	
	
end somador8BitsArch;

