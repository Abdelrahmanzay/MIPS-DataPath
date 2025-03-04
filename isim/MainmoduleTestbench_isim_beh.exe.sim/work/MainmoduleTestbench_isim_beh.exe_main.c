/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_0746072811;
char *WORK_P_3763343808;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *WORK_P_3152011244;
char *WORK_P_1433279867;
char *WORK_P_0579733536;
char *WORK_P_3155485639;
char *WORK_P_0485488821;
char *WORK_P_0015564191;
char *WORK_P_0211219801;
char *WORK_P_2407203851;
char *WORK_P_0897173179;
char *WORK_P_2990524867;
char *WORK_P_4247528515;
char *WORK_P_1101774964;
char *WORK_P_2119250017;
char *IEEE_P_0774719531;
char *IEEE_P_1242562249;
char *IEEE_P_3564397177;
char *STD_TEXTIO;
char *WORK_P_3774755215;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    work_p_1101774964_init();
    work_p_3774755215_init();
    work_p_2119250017_init();
    std_textio_init();
    ieee_p_3564397177_init();
    ieee_p_3620187407_init();
    work_p_4247528515_init();
    work_p_2990524867_init();
    work_a_1130845995_0831356973_init();
    work_a_3720894149_0831356973_init();
    work_p_2407203851_init();
    work_p_0015564191_init();
    work_p_0211219801_init();
    work_p_3155485639_init();
    work_p_0485488821_init();
    work_p_1433279867_init();
    work_p_0579733536_init();
    work_p_0897173179_init();
    work_p_3763343808_init();
    work_a_2991416129_3212880686_init();
    work_a_1037769429_3212880686_init();
    work_a_3222946569_3212880686_init();
    work_p_0746072811_init();
    work_p_3152011244_init();
    work_a_2263464102_3212880686_init();
    work_a_3714479754_3212880686_init();
    work_a_0290344353_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_0532180842_3212880686_init();
    work_a_1489802966_3212880686_init();
    work_a_0959590438_3212880686_init();
    work_a_2506933159_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_2090706750_3212880686_init();
    work_a_0431830435_3212880686_init();
    work_a_1290620262_2372691052_init();


    xsi_register_tops("work_a_1290620262_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_0746072811 = xsi_get_engine_memory("work_p_0746072811");
    WORK_P_3763343808 = xsi_get_engine_memory("work_p_3763343808");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    WORK_P_3152011244 = xsi_get_engine_memory("work_p_3152011244");
    WORK_P_1433279867 = xsi_get_engine_memory("work_p_1433279867");
    WORK_P_0579733536 = xsi_get_engine_memory("work_p_0579733536");
    WORK_P_3155485639 = xsi_get_engine_memory("work_p_3155485639");
    WORK_P_0485488821 = xsi_get_engine_memory("work_p_0485488821");
    WORK_P_0015564191 = xsi_get_engine_memory("work_p_0015564191");
    WORK_P_0211219801 = xsi_get_engine_memory("work_p_0211219801");
    WORK_P_2407203851 = xsi_get_engine_memory("work_p_2407203851");
    WORK_P_0897173179 = xsi_get_engine_memory("work_p_0897173179");
    WORK_P_2990524867 = xsi_get_engine_memory("work_p_2990524867");
    WORK_P_4247528515 = xsi_get_engine_memory("work_p_4247528515");
    WORK_P_1101774964 = xsi_get_engine_memory("work_p_1101774964");
    WORK_P_2119250017 = xsi_get_engine_memory("work_p_2119250017");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    WORK_P_3774755215 = xsi_get_engine_memory("work_p_3774755215");

    return xsi_run_simulation(argc, argv);

}
