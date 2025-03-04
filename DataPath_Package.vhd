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

package DataPath_Package is
component DataPath is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           aluoperation : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
           memtoreg,  alusrc, regwrite, regdst : in  STD_LOGIC;
			  pcsrc, jump : in STD_LOGIC;
           aluout, writedata : out  STD_LOGIC_VECTOR (31 downto 0);
			  readdata : in STD_LOGIC_VECTOR (31 downto 0);
			  pc: out STD_LOGIC_VECTOR (31 downto 0);
			  jl: in STD_LOGIC);
			  
  
end component;

end DataPath_Package;
