--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:57:38 10/08/2018
-- Design Name:   
-- Module Name:   /home/juan/Documents/Sistemas_digitais/Projeto1/ULA_Test_Bench.vhd
-- Project Name:  Projeto1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ULA_Test
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ULA_Test_Bench IS
END ULA_Test_Bench;
 
ARCHITECTURE behavior OF ULA_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ULA_Test
    PORT(
         entrada : IN  std_logic_vector(3 downto 0);
         setA : IN  std_logic;
         setB : IN  std_logic;
         reset : IN  std_logic;
         CLKIN : IN  std_logic;
         carryOut : OUT  std_logic;
         overflow : OUT  std_logic;
         saida : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada : std_logic_vector(3 downto 0) := (others => '0');
   signal setA : std_logic := '0';
   signal setB : std_logic := '0';
   signal reset : std_logic := '0';
   signal CLKIN : std_logic := '0';

 	--Outputs
   signal carryOut : std_logic;
   signal overflow : std_logic;
   signal saida : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLKIN_period : time := 0.02 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ULA_Test PORT MAP (
          entrada => entrada,
          setA => setA,
          setB => setB,
          reset => reset,
          CLKIN => CLKIN,
          carryOut => carryOut,
          overflow => overflow,
          saida => saida
        );

   -- Clock process definitions
   CLKIN_process :process
   begin
		CLKIN <= '0';
		wait for CLKIN_period/2;
		CLKIN <= '1';
		wait for CLKIN_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 100 ms;
		entrada <= "1010";
		setA <= '1';
		wait for 100 ms;
		setA <= '0';
		setB <= '1';
		entrada <= "0010";
		wait for 100 ms;
		entrada	<=	"0000";
		wait for 1 ms;
		entrada <= "1000";
		setB <= '0';
--		wait for 110 ms;
--		entrada <= "0001";
--		wait for 110 ms;
--		entrada <= "0010";
--		wait for 110 ms;
--		entrada <= "0011";
--		wait for 110 ms;
--		entrada <= "0100";
--		wait for 110 ms;
--		entrada <= "0101";
--		wait for 110 ms;
--		entrada <= "0110";
--		wait for 110 ms;
--		entrada <= "0111";
--		wait for 110 ms;
--		entrada <= "1000";
      
		

      -- insert stimulus here 

      wait;
   end process;

END;
