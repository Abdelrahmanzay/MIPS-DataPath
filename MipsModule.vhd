----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:30:41 12/17/2024 
-- Design Name: 
-- Module Name:    MipsModule - Behavioral 
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
use work.Control_Package.ALL;
use work.DataPath_Package.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MipsModule is
port(clk, reset: in STD_LOGIC;
     pc: out STD_LOGIC_VECTOR(31 downto 0);
     instr: in STD_LOGIC_VECTOR(31 downto 0);
     memwrite: out STD_LOGIC;
     aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0);
     readdata: in STD_LOGIC_VECTOR(31 downto 0));
end MipsModule;

architecture Behavioral of MipsModule is

signal memtoreg, alusrc, regdst, regwrite, jump, pcsrc: STD_LOGIC;
signal zero: STD_LOGIC;
signal alucontrol: STD_LOGIC_VECTOR(3 downto 0);
signal pc_signal, aluout_signal, writedata_signal: STD_LOGIC_VECTOR(31 downto 0);

signal jal: STD_LOGIC;
begin
controller: Control port map(instr(31 downto 26), instr (5 downto 0), zero, memtoreg, memwrite, pcsrc, alusrc, regdst,regwrite, jump, alucontrol, jal);
datapath1: DataPath port map(clk, reset, instr, alucontrol, zero, memtoreg, alusrc, regwrite, regdst, pcsrc, jump, aluout_signal, writedata_signal, readdata, pc_signal, jal);
pc<=pc_signal;
aluout <= aluout_signal;
writedata<=writedata_signal;


end Behavioral;

