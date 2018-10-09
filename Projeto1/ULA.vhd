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

	port (	entradaA, entradaB, controle	:	in		std_logic_vector (3 downto 0) := (others => '0');
				carryOut, overflow					:	out	std_logic := '0';
				saidaULA									:	out	std_logic_vector (7 downto 0) := (others => '0')
			);

end ULA;

architecture ULaArch of ULA is

	component Somador4Bits is
		
		port (	numA4Bits		:in		std_logic_vector (3 downto 0) ;
					numB4Bits		:in		std_logic_vector (3 downto 0) ;
					cIn				:in		std_logic;
					cOut				:out		std_logic;
					resultado4Bits	:out		std_logic_vector (3 downto 0)
				);				
	end component;
	
	component portAnd is

	port (	entradaA : in std_logic_vector(3 downto 0);
				entradaB : in std_logic_vector(3 downto 0);
				saida		: out	std_logic_vector(3 downto 0)
			);
				
	end component;
	
	component portOr is

	port (	entradaA : in std_logic_vector(3 downto 0);
				entradaB : in std_logic_vector(3 downto 0);
				saida		: out	std_logic_vector(3 downto 0)
			);

	end component;
	
	component portXor is

	port (
				entradaA		:	in 	std_logic_vector (3 downto 0);
				entradaB		:	in 	std_logic_vector (3 downto 0);
				saida			: 	out	std_logic_vector (3 downto 0)
			);

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
	signal saidaSomador : std_logic_vector(3 downto 0):= (others => '0');
	signal carryOutSomador : std_logic := '0';
	
	--Subtrator
	signal carryOutSub : std_logic := '0';
	signal saidaSub : std_logic_vector(3 downto 0) := (others => '0');
	signal saidaInversor : std_logic_vector (3 downto 0) := (others => '0');
	
	--Multiplicador
	signal saidaMultiplicador : std_logic_vector (7 downto 0) := (others => '0');
	
	--And
	signal saidaAnd	:	std_logic_vector (3 downto 0) := (others => '0');
	
	--Or
	signal saidaOr		:  std_logic_vector (3 downto 0) := (others => '0');
	
	--Xor
	signal saidaXor	:	std_logic_vector (3 downto 0) := (others => '0');
	
	--Overflow
	signal ultimoBit, penultimoBit : std_logic := '0';
	
	--Inversor
	signal entradaInvertida	: std_logic_vector (3 downto 0) := (others => '0');
	
	--Complementador
	signal entradaComplementada	: std_logic_vector (3 downto 0) := (others => '0');
	signal carryOutCpl : std_logic := '0';


begin
	
	
	--Port Map somador
	somador : Somador4Bits port map (entradaA, entradaB, '0', carryOutSomador, saidaSomador);	
	
	--Port Map Subtrator
	subtrator	:	Somador4Bits port map (entradaA, saidaInversor, '1', carryOutSub, saidaSub);
	Inversor4Bits : Inversor port map (entradaB, saidaInversor);
	
	--Port Map Multiplicador
	multi	:	multiplicador	port map (entradaA, entradaB, saidaMultiplicador);
	
	--Port Map And
	andPort	:	portAnd	port map (entradaA, entradaB, saidaAnd);
	
	--Port Map Or
	orPort	:	portOr	port map (entradaA, entradaB, saidaOr);
	
	--Port Map Xor
	xorPort	:	portXor	port map (entradaA, entradaB, saidaXor);
	
	--Port Map inversor
	inversorEntrada	:	inversor	port map(entradaA, entradaInvertida);
	
	--Port Map Complementador
	complementador	:	Somador4Bits port map (entradaInvertida, "0001",'0',carryOutCpl, entradaComplementada);

	ulaProcess : process (controle) is
	begin
	
		saidaULA <= "00000000";
		overflow <= '0';
		carryOut	<= '0';
	
		if (controle = "0000") then			-- Somador
			carryOut						<= carryOutSomador;
			saidaULA (3 downto 0) 	<= saidaSomador;
			ultimoBit					<= saidaSomador (3);
			penultimoBit				<= carryOutSomador;
			overflow 						<= (penultimoBit xor ultimoBit);
			
		
		elsif (controle = "0001") then 		-- Subtrator
			carryOut						<=	carryOutSub;
			saidaULA (3 downto 0) 	<= saidaSub;
			ultimoBit					<= saidaSub(3);
			penultimoBit				<=	carryOutSub;
			overflow 						<= (penultimoBit xor ultimoBit);
			
		elsif (controle = "0010") then		-- multiplicacao
			saidaULa <= saidaMultiplicador;
			
		elsif (controle = "0011") then		--And
			saidaULA (3 downto 0)<= saidaAnd;
			
		elsif (controle = "0100") then		--Or
			saidaULA (3 downto 0) <= saidaOr;
			
		elsif (controle = "0101") then			--xor
			saidaULA (3 downto 0) <= saidaXor;
		
		elsif (controle = "0110")	then			--Inversor
			saidaUla (3 downto 0)	<= entradaInvertida;
		
		elsif	(controle = "0111")	then			--Complementador
			saidaULA	(3 downto 0)	<=	entradaComplementada;
			
		elsif (controle = "1000") then --
			saidaULA	(3 downto 0)	<= (entradaA nor entradaB);
			
		end if;
		
		
		
	
	end process ulaProcess ;
	
	

end ULaArch;

