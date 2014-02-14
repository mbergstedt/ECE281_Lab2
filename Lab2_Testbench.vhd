--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matt Bergstedt
--
-- Create Date:   22:55:06 02/13/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Matthew.Bergstedt/Documents/Personal/Spring 2014/ECE 281/Labs/Lab2/Lab2_Testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab2_Bergstedt
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
USE ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Lab2_Testbench IS
END Lab2_Testbench;
 
ARCHITECTURE behavior OF Lab2_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab2_Bergstedt
    PORT(
         Ain : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic_vector(3 downto 0);
			Button : IN std_logic;
         Sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');
	signal Button : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab2_Bergstedt PORT MAP (
          Ain => Ain,
          Bin => Bin,
			 Button => Button,
          Sum => Sum
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 5 ns;

		for I in 0 to 15 loop
			wait for 5 ns;
			for J in 0 to 15 loop
				report "For A = " &
				std_logic'image(Ain(3)) &
				std_logic'image(Ain(2)) &
				std_logic'image(Ain(1)) &
				std_logic'image(Ain(0)) &
				" and B = " &
				std_logic'image(Bin(3)) &
				std_logic'image(Bin(2)) &
				std_logic'image(Bin(1)) &
				std_logic'image(Bin(0)) &
				", Sum = " &
				std_logic'image(Sum(3)) &
				std_logic'image(Sum(2)) &
				std_logic'image(Sum(1)) &
				std_logic'image(Sum(0))
				severity note;
				Bin <= Bin + "0001";
				wait for 5 ns;
			end loop;
			Ain <= Ain + "0001";
			wait for 5 ns;
		end loop;
		
      wait;
   end process;

END;
