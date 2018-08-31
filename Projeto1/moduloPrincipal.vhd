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




