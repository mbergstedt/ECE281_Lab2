----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matt Bergstedt
-- 
-- Create Date:    11:07:14 02/14/2014 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux is
    Port ( Button : in  STD_LOGIC;
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
           Bnew : out  STD_LOGIC_VECTOR (3 downto 0));
end Mux;

architecture Behavioral of Mux is

begin

mux : process(Button, Bin)
begin
if (Button = '1') then
	Bnew <= std_logic_vector(unsigned(not(Bin)) + 1);
else
	Bnew <= Bin;
end if;
end process mux;


end Behavioral;

