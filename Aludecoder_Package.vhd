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

package Aludecoder_Package is

component Aludecoder is

port(funct: in STD_LOGIC_VECTOR(5 downto 0);
     aluop: in STD_LOGIC_VECTOR(1 downto 0);
     alucontrol: out STD_LOGIC_VECTOR(3 downto 0));

end component;

end Aludecoder_Package;



