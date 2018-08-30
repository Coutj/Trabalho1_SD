----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:16:42 08/29/2018 
-- Design Name: 
-- Module Name:    moduloPrincipal - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Somador1Bit is
	port (	numA			:	in 	std_logic;
				numB			:	in 	std_logic;
				carryIn		:	in 	std_logic;
				carryOut		:	out 	std_logic;
				resultado	:	out 	std_logic);
end Somador1Bit;

architecture Somador1BitArch of Somador1Bit is

begin

	resultado <= numA xor numB xor carryIn;
	carryOut <= (numA and numB) or ((numA xor numB) and carryIn);
	
end Somador1BitArch;


entity Somador4Bits is
	
	port (	numA4Bits		:in		std_logic_vector (3 downto 0);
				numB4Bits		:in		std_logic_vector (3 downto 0);
				cIn				:in		std_logic;
				cOut				:out		std_logic;
				resultado4Bits	:out		std_logic_vector (3 downto 0));
				
end Somador4Bits;

architecture Somador4BitsArch of Somador4Bits is
		
	component Somador1Bit is
	port (	numA4Bits		:	in 	std_logic;
				numB4Bits		:	in 	std_logic;
				--cIn				:	in 	std_logic;
				cOut				:	out 	std_logic;
				resultado4Bits	:	out 	std_logic);
	end component;
	
	begin
	
		signal carryOut0, carryOut1, carryOut2, carryOut3	: std_logic;
	
		somador1:	Somador1Bit port map (numA4Bits(0), numB4Bits(0),'0', carryOut0, resultado4Bits(0));
		somador2:	Somador1Bit port map (numA4Bits(1), numB4Bits(1), carryOut0, carryOut1, resultado4Bits(1));
		somador3:	Somador1Bit port map (numA4Bits(2), numB4Bits(2), carryOut1, carryOut2, resultado4Bits(2));
		somador4:	Somador1Bit port map (numA4Bits(3), numB4Bits(3), carryOut2, carryOut3, resultado4Bits(3));
		
		cOut <= carryOut3;

end Somador4BitsArch;

