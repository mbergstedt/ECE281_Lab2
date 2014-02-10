--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matt Bergstedt
--
-- Create Date:   22:06:46 02/09/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Matthew.Bergstedt/Documents/Personal/Spring 2014/ECE 281/Labs/Lab2/Adder_Testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder
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
 
ENTITY Adder_Testbench IS
END Adder_Testbench;
 
ARCHITECTURE behavior OF Adder_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder
    PORT(
         Cin : IN  std_logic;
         A : IN  std_logic;
         B : IN  std_logic;
         Cout : OUT  std_logic;
         Sum : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal Sum : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Cout => Cout,
          Sum => Sum
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		-- start check
		Cin <= '0';
		A <= '0';
		B <= '0';
		wait for 100 ns;	
		
		Cin <= '0';
		A <= '0';
		B <= '1';
		wait for 100 ns;
		
		Cin <= '0';
		A <= '1';
		B <= '0';
		wait for 100 ns;	
		
		Cin <= '0';
		A <= '1';
		B <= '1';
		wait for 100 ns;
		
		Cin <= '1';
		A <= '0';
		B <= '0';
		wait for 100 ns;	
		
		Cin <= '1';
		A <= '0';
		B <= '1';
		wait for 100 ns;
		
		Cin <= '1';
		A <= '1';
		B <= '0';
		wait for 100 ns;	
		
		Cin <= '1';
		A <= '1';
		B <= '1';
		wait for 100 ns;

      wait;
   end process;

END;
