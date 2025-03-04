----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:26 12/17/2024 
-- Design Name: 
-- Module Name:    Control - Behavioral 
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
use work.Aludecoder_Package.ALL;
use work.MainDecoder_Package.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control is
 port(op, funct: in STD_LOGIC_VECTOR (5 downto 0);  
 zero: in STD_LOGIC;   
 memtoreg, memwrite: out STD_LOGIC;  
 pcsrc, alusrc: out STD_LOGIC;  
 regdst, regwrite: out STD_LOGIC;  
 jump: out STD_LOGIC;    
 alucontrol: out STD_LOGIC_VECTOR (3 downto 0);
 jal: out STD_LOGIC);

end Control;

architecture Behavioral of Control is
	signal aluop1: STD_LOGIC_VECTOR(1 downto 0);
	signal temp: STD_LOGIC;


begin
	aludecoder1: Aludecoder port map(funct, aluop1, alucontrol);
	maindecoder1: MainDecoder port map(op, memtoreg, memwrite, temp, alusrc, regdst, regwrite, jump, jal, aluop1);
	pcsrc <= zero and temp;
	
	



end Behavioral;

