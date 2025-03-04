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

package mux2x is
component mux2x1 is

generic(noofbits : integer :=  32);
		
    Port ( input1 : in  STD_LOGIC_VECTOR (noofbits-1 downto 0);
           input2 : in  STD_LOGIC_VECTOR (noofbits-1 downto 0);
           selector : in  STD_LOGIC ;
           output : out  STD_LOGIC_VECTOR (noofbits-1 downto 0));
			  
end component;

end mux2x;

