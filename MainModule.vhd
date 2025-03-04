-- 
-- Create Date:    23:09:12 12/17/2024 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.MipsModule_Package.ALL;
use work.Dmem_Package.ALL;
use work.Imem_Package.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
 
 entity MainModule is   
 Port (  
	 clk : in STD_LOGIC;   
	 reset : in STD_LOGIC;  
	 writedata : out STD_LOGIC_VECTOR (31 downto 0);     
	 dataadr : out STD_LOGIC_VECTOR (31 downto 0);     
	 memwrite : out STD_LOGIC    
 );
 end MainModule; 
 architecture Behavioral of MainModule is  
	 signal pc : STD_LOGIC_VECTOR (31 downto 0) ; 
	 signal instr : STD_LOGIC_VECTOR (31 downto 0) ;   
	 signal writedatat, aluout : STD_LOGIC_VECTOR(31 downto 0) ;  
	 signal readdatat : STD_LOGIC_VECTOR(31 downto 0) ; 
	 signal memwritet : STD_LOGIC ;
 begin 
	 Imem1 : Imem port map(pc(7 downto 2), instr);   
	 Dmem1 : Dmem port map(clk, memwritet, aluout, writedatat, readdatat);   
	 mips1 : MipsModule port map(clk, reset, pc, instr, memwritet, aluout, writedatat, readdatat);   
	dataadr <= aluout;  
	writedata <= writedatat;   
	memwrite <= memwritet; 
 end Behavioral;
