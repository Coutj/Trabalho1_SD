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
		entrada						:	in		std_logic_vector (3 downto 0);
		setA, setB, setCtrl, reset	: 	in		std_logic;
		carryOut, overflow				:	out	std_logic;
		saida								:	out	std_logic_vector (7 downto 0)
	);

end ULA;

architecture ULaArch of ULA is

	component Somador4Bits is
		
		port (	numA4Bits		:in		std_logic_vector (3 downto 0);
					numB4Bits		:in		std_logic_vector (3 downto 0);
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
	signal carryInSomador : std_logic;

	signal numeroA, numeroB, controle : std_logic_vector(3 downto 0);
	
begin

	
	
--	numeroA <= "0000";
--	numeroB <= "0000";
--	controle <= "0000";
	
	--Port Map somador
	somador : Somador4Bits port map (entradaSomadorA, entradaSomadorB, carryInSomador, carryOut, saida (3 downto 0));


	numeroA <= entrada when (setA = '1') 
		else 
			numeroA;

--	controle : process (setA, setB, setCtrl) is
--		if (setA = '1') then
--			numeroA <= entrada;
--		end if;
--			
--		if (setB =  '1') then
--			numeroB <= entrada;
--		end if;
--		
--		if (setCtrl = '1') then
--			controle <= entrada;
--		end if;
--	end process controle;



	ulaProcess: process (controle, numeroA, numeroB) is
	
	begin	
	
		if (controle = "0000") then -- somador
			entradaSomadorA	<= numeroA;
			entradaSomadorB	<= numeroB;
			carryInSomador		<= '0';
		
		end if;
		
	
		
--		if (controle = "001") then -- and
--		end if;
--		
--		if (controle = "010") then -- or
--		end if;
--		
--		if (controle = "011") then -- not
--		end if;
--		
--		if (controle = "100") then -- xor
--		end if;
--		
--		if (controle = "101") then -- complementador
--		end if;
--		
--		if (controle = "110") then -- multiplicador
--		end if;
--		
--		if (controle = "111") then -- 
--		end if;
--		
		
		
	
	end process ulaProcess;	

	

end ULaArch;

