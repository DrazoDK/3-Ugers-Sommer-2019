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
static const char *ng0 = "C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3/Tilstandsmaskine.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3481994754_3212880686_p_0(char *t0)
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
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2788);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2840);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1788U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t2 = (t0 + 2840);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t11;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

}

static void work_a_3481994754_3212880686_p_1(char *t0)
{
    char t11[16];
    char t21[16];
    char t22[16];
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2876);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2912);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2948);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2984);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1696U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (t0 + 3020);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = t6;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t8 = (t6 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2796);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1696U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t9);
    goto **((char **)t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 868U);
    t5 = *((char **)t4);
    t4 = (t0 + 6356U);
    t7 = (t0 + 6466);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 7;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t4, t7, t11);
    if (t16 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3020);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB5;

LAB7:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2876);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3020);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2912);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3020);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2948);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3020);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t1 = (t0 + 6356U);
    t3 = (t0 + 6474);
    t5 = (t23 + 0U);
    t7 = (t5 + 0U);
    *((int *)t7) = 0;
    t7 = (t5 + 4U);
    *((int *)t7) = 7;
    t7 = (t5 + 8U);
    *((int *)t7) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t7 = (t5 + 12U);
    *((unsigned int *)t7) = t15;
    t7 = (t0 + 960U);
    t10 = *((char **)t7);
    t7 = (t0 + 6372U);
    t12 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t22, t3, t23, t10, t7);
    t13 = (t0 + 1052U);
    t17 = *((char **)t13);
    t13 = (t0 + 6388U);
    t18 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t21, t12, t22, t17, t13);
    t19 = (t0 + 1144U);
    t20 = *((char **)t19);
    t19 = (t0 + 6404U);
    t24 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t11, t18, t21, t20, t19);
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t24, t11);
    if (t6 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3020);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB15:    goto LAB5;

LAB11:    xsi_set_current_line(57, ng0);
    t13 = (t0 + 3020);
    t17 = (t13 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)1;
    xsi_driver_first_trans_fast(t13);
    goto LAB12;

LAB14:    xsi_set_current_line(76, ng0);
    t25 = (t0 + 2984);
    t26 = (t25 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t25);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3020);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

}


extern void work_a_3481994754_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3481994754_3212880686_p_0,(void *)work_a_3481994754_3212880686_p_1};
	xsi_register_didat("work_a_3481994754_3212880686", "isim/SigGenTop_tb_v2_isim_beh.exe.sim/work/a_3481994754_3212880686.didat");
	xsi_register_executes(pe);
}
