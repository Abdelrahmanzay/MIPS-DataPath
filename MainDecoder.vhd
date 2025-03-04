----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:39 12/17/2024 
-- Design Name: 
-- Module Name:    MainDecoder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainDecoder is
port (
op: in STD_LOGIC_VECTOR (5 downto 0);
 memtoreg, memwrite: out STD_LOGIC;
 branch, alusrc: out STD_LOGIC; 
 regdst, regwrite: out STD_LOGIC;
 jump: out STD_LOGIC;
 jal: out STD_LOGIC;
 aluop: out STD_LOGIC_VECTOR (1 downto 0));
end MainDecoder;


architecture Behavioral of MainDecoder is

signal controls : STD_LOGIC_VECTOR (9 downto 0);
begin

process(op)
begin
    case op is
        when "000000" => controls <= "1100000010"; 
        when "100011" => controls <= "1010010000"; 
        when "101011" => controls <= "0010100000"; 
        when "000100" => controls <= "0001000001"; 
        when "001000" => controls <= "1010000000"; 
        when "000010" => controls <= "0000001000"; 
		  when "000011" => controls <= "0000001100";
        when others   => controls <= "----------"; 
    end case;
end process;
 
(regwrite, regdst, alusrc, branch, memwrite, memtoreg, jump, jal, aluop(1), aluop(0)) <= controls;






end Behavioral;

