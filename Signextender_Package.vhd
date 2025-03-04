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

package Signextender_Package is

component Signextender is
	port (SE_in : in STD_LOGIC_VECTOR (15 DOWNTO 0);
			SE_out : out STD_LOGIC_VECTOR (31 DOWNTO 0)
			);
end component;

end Signextender_Package;

