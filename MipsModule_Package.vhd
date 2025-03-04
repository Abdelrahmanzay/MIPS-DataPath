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

package MipsModule_Package is

component MipsModule is
port(clk, reset: in STD_LOGIC;
     pc: out STD_LOGIC_VECTOR(31 downto 0);
     instr: in STD_LOGIC_VECTOR(31 downto 0);
     memwrite: out STD_LOGIC;
     aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0);
     readdata: in STD_LOGIC_VECTOR(31 downto 0));
end component;


end MipsModule_Package;

