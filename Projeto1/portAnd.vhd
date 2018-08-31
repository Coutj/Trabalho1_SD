----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:21 08/31/2018 
-- Design Name: 
-- Module Name:    portAnd - Behavioral 
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

entity portAnd is

	port (
				entradaA : in std_logic_vector(3 downto 0);
				entradaB : in std_logic_vector(3 downto 0);
				saida		: out	std_logic_vector(3 downto 0));
				
end portAnd;

architecture Behavioral of portAnd is

begin
	saida <= entradaA and entradaB;

end Behavioral;

