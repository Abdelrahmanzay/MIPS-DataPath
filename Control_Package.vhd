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

package Control_Package is
component Control is
 port(op, funct: in STD_LOGIC_VECTOR (5 downto 0);  
 zero: in STD_LOGIC;   
 memtoreg, memwrite: out STD_LOGIC;  
 pcsrc, alusrc: out STD_LOGIC;  
 regdst, regwrite: out STD_LOGIC;  
 jump: out STD_LOGIC;    
 alucontrol: out STD_LOGIC_VECTOR (3 downto 0);
  jal: out STD_LOGIC);

end component;

end Control_Package;


