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

package sl2 is

component shiftleft is


    Port ( input : in  STD_LOGIC_VECTOR ( 31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

end sl2;

