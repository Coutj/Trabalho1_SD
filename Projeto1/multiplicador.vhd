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

	port (
			entradaA : in 	std_logic_vector (3 downto 0);
			entradaB	: in 	std_logic_vector (3 downto 0);
			saida		: out	std_logic_vector (7 downto 0)
	);

end multiplicador;

architecture multiplicadorArch of multiplicador is

begin



	multiProcess : process(entradaA, entradaB, saida) is 
		
		variable resultParcial1,resultParcial2,
		resultParcial3,resultParcial4 : std_logic_vector (7 downto 0);
		
		if entradaB(0) == '1' then
		
		endif 
		
	
	end process multiProcess;




end multiplicadorArch;

