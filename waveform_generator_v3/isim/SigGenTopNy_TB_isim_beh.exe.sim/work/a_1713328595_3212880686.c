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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3/Disp_Drive.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1713328595_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 660U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2420);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2472);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1328U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t2 = (t0 + 2472);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t11;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 684U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

}

static void work_a_1713328595_3212880686_p_1(char *t0)
{
    char t12[16];
    char t13[16];
    char t16[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    int t14;
    unsigned int t15;
    int t17;
    char *t18;
    char *t20;
    char *t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    static char *nl0[] = {&&LAB4, &&LAB5, &&LAB6, &&LAB3};

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2508);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 2428);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 5508);
    t6 = (t0 + 2544);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 20U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t11 = (t3 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5528);
    t4 = (t0 + 5540);
    t7 = ((IEEE_P_2592010699) + 2332);
    t8 = (t13 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 11;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t14 = (11 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    t9 = (t16 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 5;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t17 = (5 - 0);
    t15 = (t17 * 1);
    t15 = (t15 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t15;
    t6 = xsi_base_array_concat(t6, t12, t7, (char)97, t1, t13, (char)97, t4, t16, (char)101);
    t10 = (t0 + 868U);
    t18 = *((char **)t10);
    t20 = ((IEEE_P_2592010699) + 2332);
    t21 = (t0 + 5412U);
    t10 = xsi_base_array_concat(t10, t19, t20, (char)97, t6, t12, (char)97, t18, t21, (char)101);
    t15 = (12U + 6U);
    t22 = (t15 + 2U);
    t3 = (20U != t22);
    if (t3 == 1)
        goto LAB10;

LAB11:    t23 = (t0 + 2544);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 40U);
    t27 = *((char **)t26);
    memcpy(t27, t10, 20U);
    xsi_driver_first_trans_fast_port(t23);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t11 = (t3 == (unsigned char)3);
    if (t11 != 0)
        goto LAB12;

LAB14:
LAB13:    goto LAB2;

LAB5:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5546);
    t4 = (t0 + 960U);
    t5 = *((char **)t4);
    t6 = ((IEEE_P_2592010699) + 2332);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 11;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (11 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = (t0 + 5428U);
    t4 = xsi_base_array_concat(t4, t12, t6, (char)97, t1, t13, (char)97, t5, t8, (char)101);
    t15 = (12U + 8U);
    t3 = (20U != t15);
    if (t3 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 2544);
    t10 = (t9 + 32U);
    t18 = *((char **)t10);
    t20 = (t18 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t4, 20U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t11 = (t3 == (unsigned char)3);
    if (t11 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB2;

LAB6:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5558);
    t4 = (t0 + 1052U);
    t5 = *((char **)t4);
    t6 = ((IEEE_P_2592010699) + 2332);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 11;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (11 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = (t0 + 5444U);
    t4 = xsi_base_array_concat(t4, t12, t6, (char)97, t1, t13, (char)97, t5, t8, (char)101);
    t15 = (12U + 8U);
    t3 = (20U != t15);
    if (t3 == 1)
        goto LAB20;

LAB21:    t9 = (t0 + 2544);
    t10 = (t9 + 32U);
    t18 = *((char **)t10);
    t20 = (t18 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t4, 20U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t11 = (t3 == (unsigned char)3);
    if (t11 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2508);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_size_not_matching(20U, t22, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2508);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB15:    xsi_size_not_matching(20U, t15, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2508);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_size_not_matching(20U, t15, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2508);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

}


extern void work_a_1713328595_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1713328595_3212880686_p_0,(void *)work_a_1713328595_3212880686_p_1};
	xsi_register_didat("work_a_1713328595_3212880686", "isim/SigGenTopNy_TB_isim_beh.exe.sim/work/a_1713328595_3212880686.didat");
	xsi_register_executes(pe);
}
