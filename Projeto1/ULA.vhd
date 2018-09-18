----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:43 09/18/2018 
-- Design Name: 
-- Module Name:    ULA - Behavioral 
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

entity ULA is

	port (
		controle	:	in		std_logic_vector (2 downto 0);
		entradaA	:	in		std_logic_vector (4 downto 0);
		entradaB	:	in		std_logic_vector (4 downto 0);
		saida		:	out	std_logic_vector (7 downto 0)
	);

end ULA;

architecture Behavioral of ULA is


	ulaProcess: process (controle, entradaA, entradaB)
	
		if (controle = "000") then -- somador			
		end if;
		
		if (controle = "001") then -- and
		end if;
		
		if (controle = "010") then -- or
		end if;
		
		if (controle = "011") then -- not
		end if;
		
		if (controle = "100") then -- xor
		end if;
		
		if (controle = "101") then -- complementador
		end if;
		
		if (controle = "110") then -- multiplicador
		end if;
		
		if (controle = "111") then -- 
		end if;
		
		
		
	
	end process ulaProcess;
	

begin


	

	

end Behavioral;

