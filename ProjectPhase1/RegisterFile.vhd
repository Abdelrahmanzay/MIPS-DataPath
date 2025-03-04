----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:28 11/22/2024 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;  -- use IEEE.STD_LOGIC_ARITH instead of IEEE.STD_LOGIC_UNSIGNED
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.mux_package.ALL;
use work.flopr_package.ALL;
use work.decoder_package.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

    signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, 
           s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32 : STD_LOGIC_VECTOR(31 downto 0);
    
    signal l1 : STD_LOGIC_VECTOR(31 downto 0);
    signal d : STD_LOGIC_VECTOR(31 downto 0); 

begin

    dec1 : decoder port map(write_sel, l1);
    d <= l1 when write_ena = '1' else (others => '0'); 

    f1  : flopr port map(write_data, clk, d(0), not(d(0)), s1);
    f2  : flopr port map(write_data, clk, d(1), not(d(1)), s2);
    f3  : flopr port map(write_data, clk, d(2), not(d(2)), s3);
    f4  : flopr port map(write_data, clk, d(3), not(d(3)), s4);
    f5  : flopr port map(write_data, clk, d(4), not(d(4)), s5);
    f6  : flopr port map(write_data, clk, d(5), not(d(5)), s6);
    f7  : flopr port map(write_data, clk, d(6), not(d(6)), s7);
    f8  : flopr port map(write_data, clk, d(7), not(d(7)), s8);
    f9  : flopr port map(write_data, clk, d(8), not(d(8)), s9);
    f10 : flopr port map(write_data, clk, d(9), not(d(9)), s10);
    f11 : flopr port map(write_data, clk, d(10), not(d(10)), s11);
    f12 : flopr port map(write_data, clk, d(11), not(d(11)), s12);
    f13 : flopr port map(write_data, clk, d(12), not(d(12)), s13);
    f14 : flopr port map(write_data, clk, d(13), not(d(13)), s14);
    f15 : flopr port map(write_data, clk, d(14), not(d(14)), s15);
    f16 : flopr port map(write_data, clk, d(15), not(d(15)), s16);
    f17 : flopr port map(write_data, clk, d(16), not(d(16)), s17);
    f18 : flopr port map(write_data, clk, d(17), not(d(17)), s18);
    f19 : flopr port map(write_data, clk, d(18), not(d(18)), s19);
    f20 : flopr port map(write_data, clk, d(19), not(d(19)), s20);
    f21 : flopr port map(write_data, clk, d(20), not(d(20)), s21);
    f22 : flopr port map(write_data, clk, d(21), not(d(21)), s22);
    f23 : flopr port map(write_data, clk, d(22), not(d(22)), s23);
    f24 : flopr port map(write_data, clk, d(23), not(d(23)), s24);
    f25 : flopr port map(write_data, clk, d(24), not(d(24)), s25);
    f26 : flopr port map(write_data, clk, d(25), not(d(25)), s26);
    f27 : flopr port map(write_data, clk, d(26), not(d(26)), s27);
    f28 : flopr port map(write_data, clk, d(27), not(d(27)), s28);
    f29 : flopr port map(write_data, clk, d(28), not(d(28)), s29);
    f30 : flopr port map(write_data, clk, d(29), not(d(29)), s30);
    f31 : flopr port map(write_data, clk, d(30), not(d(30)), s31);
    f32 : flopr port map(write_data, clk, d(31), not(d(31)), s32);

    mux1 : mux port map(read_sel1, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, 
                        s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32, data1);
    mux2 : mux port map(read_sel2, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, 
                        s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32, data2);

end Behavioral;
