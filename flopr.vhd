----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:50 11/22/2024 
-- Design Name: 
-- Module Name:    flopr - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flopr is
    Port ( d : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end flopr;

architecture Behavioral of flopr is

begin
process(clk , reset)
begin
if (reset = '1') then 
q <=(others => '0');
elsif (clk'EVENT and clk = '1') then
	if(load = '1') then
	q<=d;
	end if;
end if;
end process;

end Behavioral;

