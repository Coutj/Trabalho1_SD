----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:24 10/10/2018 
-- Design Name: 
-- Module Name:    contador2segundos - Behavioral 
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

entity contador2segundos is

	generic (numeroInteracoes : Integer := 16);
	
	port (	clockIn			: in std_logic;
				start				:	in std_logic := '0';	
				tempoLimite		: out std_logic := '0'
	);

end contador2segundos;

architecture contador2segundosArch of contador2segundos is


begin

	contar2segundos: process (clockIn) is
	
	variable tempo : integer := 0;
	
	begin	
	
		if (rising_edge (clockIn)) then -- somador
			
			if ((start = '0') or (tempo = numeroInteracoes)) then
				tempo := 0;
				tempoLimite <= '0';
			else
				tempo := tempo + 1;
			end if;

			if (tempo = numeroInteracoes) then
				tempoLimite <= '1';
				
			end if;
			
		end if;
		
	end process;

end contador2segundosArch;

