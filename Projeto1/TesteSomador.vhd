----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:11:10 08/31/2018 
-- Design Name: 
-- Module Name:    TesteSomador - Behavioral 
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

entity TesteSomador is
	port(
		entradaA 	: in std_logic_vector (3 downto 0);
		resultado 	: out std_logic_vector (3 downto 0);
		cOut			: out std_logic);
end TesteSomador;

architecture Behavioral of TesteSomador is

	component Somador4Bits is
		port (	numA4Bits		:in		std_logic_vector (3 downto 0);
					numB4Bits		:in		std_logic_vector (3 downto 0);
					cIn				:in		std_logic;
					cOut				:out		std_logic;
					resultado4Bits	:out		std_logic_vector (3 downto 0));
				
	end component;

begin


	S1 : Somador4Bits port map (entradaA, "1111", '0', cOut, resultado );

end Behavioral;

