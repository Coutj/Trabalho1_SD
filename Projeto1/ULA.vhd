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
		entradaA,entradaB, controle	:	in		std_logic_vector (3 downto 0) := (others => '0');
		carryOut, overflow					:	out	std_logic := '0';
		saida									:	out	std_logic_vector (7 downto 0) := (others => '0')
	);

end ULA;

architecture ULaArch of ULA is

	component Somador4Bits is
		
		port (	numA4Bits		:in		std_logic_vector (3 downto 0) ;
					numB4Bits		:in		std_logic_vector (3 downto 0) ;
					cIn				:in		std_logic;
					cOut				:out		std_logic;
					resultado4Bits	:out		std_logic_vector (3 downto 0));
					
	end component;
	
	component portAnd is

	port (
				entradaA : in std_logic_vector(3 downto 0);
				entradaB : in std_logic_vector(3 downto 0);
				saida		: out	std_logic_vector(3 downto 0));
				
	end component;
	
	component portOR is

	port (
				entradaA : in std_logic_vector(3 downto 0);
				entradaB : in std_logic_vector(3 downto 0);
				saida		: out	std_logic_vector(3 downto 0));

	end component;
	
	component portXor is

	port (
		entradaA		:	in 	std_logic_vector (3 downto 0);
		entradaB		:	in 	std_logic_vector (3 downto 0);
		saida			: 	out	std_logic_vector (3 downto 0));

	end component;
	
	component Inversor is
	port(
			entradaA : in std_logic_vector(3 downto 0);
			saida		: out	std_logic_vector(3 downto 0));

	end component;
	
	component multiplicador is

	port (
			entradaA : in 	std_logic_vector (3 downto 0);
			entradaB	: in 	std_logic_vector (3 downto 0);
			saida		: out	std_logic_vector (7 downto 0));

	end component;
	
	--Somador
	signal entradaSomadorA, entradaSomadorB : std_logic_vector(3 downto 0);
	signal carryInSomador : std_logic := '0';



begin

	--Port Map somador
	somador : Somador4Bits port map (entradaSomadorA, entradaSomadorB, carryInSomador, carryOut, saida (3 downto 0));	


	ulaProcess : process (controle) is
	begin
	
		if (controle = "0000") then
			
			entradaSomadorA <= entradaA;
			entradaSomadorB <= entradaB;
			
		end if;
	
	end process ulaProcess ;
	

end ULaArch;

