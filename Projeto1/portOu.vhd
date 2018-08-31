----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:36 08/31/2018 
-- Design Name: 
-- Module Name:    portOu - Behavioral 
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

entity portOu is

	port (
				entradaA : in std_logic_vector(3 downto 0);
				entradaB : in std_logic_vector(3 downto 0);
				saida		: out	std_logic_vector(3 downto 0));

end portOu;

architecture portOuArch of portOu is

begin

	saida <= entradaA or entradaB;

end portOuArch;

