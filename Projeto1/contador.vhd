----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:35:00 09/28/2018 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is

	port(		CLK : in std_logic;
				saida : out std_logic
	);

end contador;

architecture contadorArch of contador is

	constant contagemFinal				: std_logic_vector(22 downto 0) := "10111110101111000010000";   --clkin/f/2 101111101011110000100000000
   signal 	contagemInicial		: std_logic_vector(22 downto 0) := (others => '0');

begin

	contProcess : process(CLK) is				
		begin
		
		
				if (rising_edge(CLK)) then
				
					contagemInicial <= std_logic_vector( unsigned (contagemInicial) + 1);
					
					if(contagemInicial > contagemFinal) then
						saida <= '1';
						contagemInicial <= (others => '0');
					else				
						saida <= '0';
					end if;
					
				end if;

		end Process contProcess;

end contadorArch;

