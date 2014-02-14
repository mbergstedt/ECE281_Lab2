----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matt Bergstedt
-- 
-- Create Date:    16:18:08 02/07/2014 
-- Design Name: 
-- Module Name:    Lab2_Bergstedt - Behavioral 
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

entity Lab2_Bergstedt is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end Lab2_Bergstedt;

architecture Behavioral of Lab2_Bergstedt is

-- create full adder component
component Full_Adder is
		port (Cin : in STD_LOGIC;
				A : in STD_LOGIC;
				B : in STD_LOGIC;
				Cout : out STD_LOGIC;
				Sum : out STD_LOGIC);
end component Full_Adder;

-- create an internal wire for the carry between adders
signal Cover : std_logic;

begin

-- instatiate 4 full adders
Bit0: component Full_Adder
	port map (Cin => '0',
				 A => Ain(0),
				 B => Bin(0),
				 Cout => Cover,
				 Sum => Sum(0));
	
Bit1: component Full_Adder
	port map (Cin => Cover,
				 A => Ain(1),
				 B => Bin(1),
				 Cout => Cover,
				 Sum => Sum(1));

Bit2: component Full_Adder
	port map (Cin => Cover,
				 A => Ain(2),
				 B => Bin(2),
				 Cout => Cover,
				 Sum => Sum(2));

Bit3: component Full_Adder
	port map (Cin => Cover,
				 A => Ain(3),
				 B => Bin(3),
				 Cout => Cover,
				 Sum => Sum(3));

end Behavioral;

