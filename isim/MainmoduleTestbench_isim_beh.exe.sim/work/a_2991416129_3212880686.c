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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/20102/Downloads/ProjectPhase1/ProjectPhase1/Aludecoder.vhd";



static void work_a_2991416129_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4736);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB6:    t5 = (t0 + 4738);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB7:
LAB5:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4748);
    t4 = xsi_mem_cmp(t1, t2, 6U);
    if (t4 == 1)
        goto LAB10;

LAB16:    t5 = (t0 + 4754);
    t7 = xsi_mem_cmp(t5, t2, 6U);
    if (t7 == 1)
        goto LAB11;

LAB17:    t8 = (t0 + 4760);
    t15 = xsi_mem_cmp(t8, t2, 6U);
    if (t15 == 1)
        goto LAB12;

LAB18:    t10 = (t0 + 4766);
    t16 = xsi_mem_cmp(t10, t2, 6U);
    if (t16 == 1)
        goto LAB13;

LAB19:    t12 = (t0 + 4772);
    t17 = xsi_mem_cmp(t12, t2, 6U);
    if (t17 == 1)
        goto LAB14;

LAB20:
LAB15:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4798);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB9:
LAB2:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(53, ng0);
    t8 = (t0 + 4740);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4744);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB8:;
LAB10:    xsi_set_current_line(61, ng0);
    t14 = (t0 + 4778);
    t19 = (t0 + 2912);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t14, 4U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB9;

LAB11:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 4782);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB12:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4786);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB13:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4790);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB14:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4794);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB21:;
}


extern void work_a_2991416129_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2991416129_3212880686_p_0};
	xsi_register_didat("work_a_2991416129_3212880686", "isim/MainmoduleTestbench_isim_beh.exe.sim/work/a_2991416129_3212880686.didat");
	xsi_register_executes(pe);
}
