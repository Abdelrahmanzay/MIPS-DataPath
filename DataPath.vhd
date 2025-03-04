----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:59 11/25/2024 
-- Design Name: 
-- Module Name:    DataPath - Behavioral 
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
use work.Alu_Package.ALL;
use work.RegisterFile_Package.ALL;
use work.mux2x.ALL;
use work.sl2.ALL;
use work.Signextender_Package.ALL;
use work.adderpackage.ALL;
use work.flopr_package.ALL;
 entity DataPath is
    Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        instr : in STD_LOGIC_VECTOR (31 downto 0);
        aluoperation : in STD_LOGIC_VECTOR (3 downto 0);
        zero : out STD_LOGIC;
        memtoreg, alusrc, regwrite, regdst : in STD_LOGIC;
        pcsrc, jump : in STD_LOGIC;
        aluout, writedata : out STD_LOGIC_VECTOR (31 downto 0);
        readdata : in STD_LOGIC_VECTOR (31 downto 0);
        pc : out STD_LOGIC_VECTOR (31 downto 0);
		  jl: in STD_LOGIC
    );
end DataPath;
 
architecture Behavioral of DataPath is

    signal aluout_internal, writedata_internal, pc_internal : STD_LOGIC_VECTOR(31 downto 0);
    signal out1, out2 : STD_LOGIC_VECTOR (31 downto 0);
    signal writereg : STD_LOGIC_VECTOR(4 downto 0);
    signal pcjump, pcnext, pcnextbr, pcplus4, pcbranch : STD_LOGIC_VECTOR(31 downto 0);
    signal signimm, signimmsh : STD_LOGIC_VECTOR(31 downto 0);
    signal befalu : STD_LOGIC_VECTOR(31 downto 0);
	 
	 signal sig1: STD_LOGIC_VECTOR(4 downto 0);
	 signal sig2: STD_LOGIC_VECTOR(31 downto 0);
	 
begin
aluout <= aluout_internal;
writedata <= out2;
pc <= pc_internal;
pcjump <= pcplus4(31 downto 28) & instr(25 downto 0) & "00";
reg : RegisterFile port map (instr(25 downto 21), instr(20 downto 16), sig1, regwrite, clk, reset, sig2, out1, out2);
alu1 : Alu port map(out1, befalu, aluoperation, aluout_internal, zero);
pcreg : flopr port map(pcnext, clk,  '1', reset, pc_internal);
pcadd1 : adder port map(pc_internal, "00000000000000000000000000000100", pcplus4);
signextender1 : Signextender port map(instr(15 downto 0), signimm);
immsh : shiftleft port map(signimm, signimmsh);
pcadd2 : adder port map(pcplus4, signimmsh, pcbranch);
pcbrmux : mux2x1  generic map(32) port map(pcplus4, pcbranch, pcsrc, pcnextbr);
pcmux : mux2x1  generic map(32) port map(pcnextbr, pcjump, jump, pcnext );
beforereg : mux2x1 generic map(5)  port map(instr(20 downto 16),  instr(15 downto 11), regdst, writereg);
afterreg : mux2x1 generic map(32)  port map(out2, signimm, alusrc, befalu);
aftermem : mux2x1 generic map(32) port map(aluout_internal, readdata, memtoreg, writedata_internal);

mux1: mux2x1 generic map(5) port map(writereg, "11111", jl, sig1);
mux2: mux2x1 generic map(32) port map(writedata_internal, pcplus4, jl, sig2);
end Behavioral;