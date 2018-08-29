----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:16:42 08/29/2018 
-- Design Name: 
-- Module Name:    moduloPrincipal - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ula is
	port(
	
		numA	:	in		std_logic_vector (3 downto 0);
		numB	:	in		std_logic_vector (3 downto 0);
		controle	:	in		std_logic_vector (2 downto 0);
		saida		: 	out	std_logic_vector (7 downto 0);
		overflow	:	out	std_logic;
		carryOut	:	out	std_logic;
		zero		:	out	std_logic	
	);
end ULA;

architecture UlaArch of Ula is

begin


end UlaArch;




--entity Somador is
--	port(
	
--		numero1  : in  std_logic_vector (3 downto 0);
--		numero2  : in  std_logic_vector (3 downto 0);
--		carryIn  : in  std_logic;
--		carryOut : out std_logic;
--		saida    : out std_logic_vector (3 downto 0)
--	);

--end entity Somador;

--architecture SomadorArch of Somador is

--begin

--	saida <= numero1 xor numero2 xor carryIn;
--	carryOut <= (numero1 and numero2) or ((numero1 xor numero2) and carryIn);

--end SomadorArch;







