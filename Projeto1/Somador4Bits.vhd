----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:57:34 08/31/2018 
-- Design Name: 
-- Module Name:    Somador4Bits - Behavioral 
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

entity Somador4Bits is
	
	port (	numA4Bits		:in		std_logic_vector (3 downto 0) := (others => '0');
				numB4Bits		:in		std_logic_vector (3 downto 0) := (others => '0');
				cIn				:in		std_logic := '0';
				cOut				:out		std_logic := '0';
				overflow			:out		std_logic := '0';
				resultado4Bits	:out		std_logic_vector (3 downto 0) := (others => '0')
	);
				
end Somador4Bits;

architecture Somador4BitsArch of Somador4Bits is
		
	component Somador1Bit is
	
		port (	numA			:	in 	std_logic;
					numB			:	in 	std_logic;
					carryIn		:	in 	std_logic;
					carryOut		:	out 	std_logic;
					resultado	:	out 	std_logic
		);
		
	end component;
		
	signal carryOut0, carryOut1, carryOut2, carryOut3	: std_logic;
	
	begin
	
		somador1:	Somador1Bit port map (numA4Bits(0), numB4Bits(0),cIn, carryOut0, resultado4Bits(0));
		somador2:	Somador1Bit port map (numA4Bits(1), numB4Bits(1), carryOut0, carryOut1, resultado4Bits(1));
		somador3:	Somador1Bit port map (numA4Bits(2), numB4Bits(2), carryOut1, carryOut2, resultado4Bits(2));
		somador4:	Somador1Bit port map (numA4Bits(3), numB4Bits(3), carryOut2, carryOut3, resultado4Bits(3));
		
		cOut <= carryOut3;
		overflow	<= carryOut3 xor carryOut2;

end Somador4BitsArch;

