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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
	port(
		CLK : in std_logic;
		saida : out std_logic
	
	);

end contador;

architecture contadorArch of contador is

begin

	contProcess : process(CLK) is
		variable intern_value: integer :=0;
		variable count : integer := 0;
		begin
		
		--	count := intern_value;
			
	--		while (true) loop
			
				if ((CLK='1') and (CLK'event)) then
					intern_value:=(intern_value + 1) mod 32;
					count := intern_value;
					if (count = 31) then
						saida <= '1';
					else
						saida <= '0';
					end if;
				end if;
--			end loop;
		
		end Process contProcess;

end contadorArch;

