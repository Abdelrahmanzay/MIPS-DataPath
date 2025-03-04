--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package flopr_package is

component flopr is
    Port ( d : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
 
end flopr_package;
