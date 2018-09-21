----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:58 09/18/2018 
-- Design Name: 
-- Module Name:    portXor - Behavioral 
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

entity portXor is

	port (
		entradaA		:	in 	std_logic_vector (3 downto 0);
		entradaB		:	in 	std_logic_vector (3 downto 0);
		saida			: 	out	std_logic_vector (3 downto 0)
	);

end portXor;

architecture portXorArch of portXor is

begin
	
	saida <= entradaA xor entradaB;

end portXorArch;

