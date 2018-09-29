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
	port(
		CLK : in std_logic;
		saida : out std_logic
	
	);

end contador;

architecture contadorArch of contador is

	constant prescaler				: std_logic_vector(24 downto 0) := "1011111010111100001000000";
   signal prescaler_counter	: std_logic_vector(24 downto 0) := (others => '0');

begin

	contProcess : process(CLK) is				
		begin
		
		
				if ((CLK='1') and (CLK'event)) then
					prescaler_counter <= std_logic_vector( unsigned (prescaler_counter) + 1);
					if(prescaler_counter > prescaler) then
						saida <= '1';
						prescaler_counter <= (others => '0');
					else				
						saida <= '0';
					end if;
				end if;

		end Process contProcess;

end contadorArch;

