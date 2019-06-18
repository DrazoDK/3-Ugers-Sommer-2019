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
static const char *ng0 = "C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3/p_s_reg.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_2816046371_3212880686_p_0(char *t0)
{
    char t5[16];
    char t6[16];
    char t7[16];
    char t9[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned int t31;
    unsigned char t32;
    unsigned int t33;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 2000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 4203);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t12 = (7 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t0 + 776U);
    t14 = *((char **)t11);
    t11 = (t0 + 4096U);
    t15 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t7, t1, t9, t14, t11);
    t16 = (t0 + 868U);
    t17 = *((char **)t16);
    t16 = (t0 + 4112U);
    t18 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t6, t15, t7, t17, t16);
    t19 = (t0 + 960U);
    t20 = *((char **)t19);
    t19 = (t0 + 4128U);
    t21 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t5, t18, t6, t20, t19);
    t22 = (t5 + 12U);
    t13 = *((unsigned int *)t22);
    t23 = (1U * t13);
    t24 = (8U != t23);
    if (t24 == 1)
        goto LAB5;

LAB6:    t25 = (t0 + 2044);
    t26 = (t25 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t21, 8U);
    xsi_driver_first_trans_fast(t25);
    goto LAB3;

LAB5:    xsi_size_not_matching(8U, t23, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1144U);
    t10 = *((char **)t2);
    t12 = (7 - 7);
    t13 = (t12 * -1);
    t23 = (1U * t13);
    t31 = (0 + t23);
    t2 = (t10 + t31);
    t32 = *((unsigned char *)t2);
    t11 = (t0 + 2080);
    t14 = (t11 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t32;
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t13 = (7 - 6);
    t23 = (t13 * 1U);
    t31 = (0 + t23);
    t1 = (t2 + t31);
    t10 = ((IEEE_P_2592010699) + 2332);
    t11 = (t6 + 0U);
    t14 = (t11 + 0U);
    *((int *)t14) = 6;
    t14 = (t11 + 4U);
    *((int *)t14) = 0;
    t14 = (t11 + 8U);
    *((int *)t14) = -1;
    t12 = (0 - 6);
    t33 = (t12 * -1);
    t33 = (t33 + 1);
    t14 = (t11 + 12U);
    *((unsigned int *)t14) = t33;
    t8 = xsi_base_array_concat(t8, t5, t10, (char)97, t1, t6, (char)99, (unsigned char)2, (char)101);
    t33 = (7U + 1U);
    t3 = (8U != t33);
    if (t3 == 1)
        goto LAB12;

LAB13:    t14 = (t0 + 2044);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 8U);
    xsi_driver_first_trans_fast(t14);
    goto LAB3;

LAB9:    t2 = (t0 + 592U);
    t8 = *((char **)t2);
    t24 = *((unsigned char *)t8);
    t30 = (t24 == (unsigned char)2);
    t3 = t30;
    goto LAB11;

LAB12:    xsi_size_not_matching(8U, t33, 0);
    goto LAB13;

}


extern void work_a_2816046371_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2816046371_3212880686_p_0};
	xsi_register_didat("work_a_2816046371_3212880686", "isim/SigGenTop_tb_v2_isim_beh.exe.sim/work/a_2816046371_3212880686.didat");
	xsi_register_executes(pe);
}
