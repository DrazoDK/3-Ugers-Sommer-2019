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
static const char *ng0 = "C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator_v3/ss_puls_gen.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_3909560373_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2104);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t4 = (t0 + 684U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (t0 + 2164);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_3909560373_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2112);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 960U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (t0 + 2200);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_3909560373_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(31, ng0);

LAB3:    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 960U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t6);
    t8 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t7);
    t1 = (t0 + 2236);
    t9 = (t1 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t13 = (t0 + 2120);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3909560373_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3909560373_3212880686_p_0,(void *)work_a_3909560373_3212880686_p_1,(void *)work_a_3909560373_3212880686_p_2};
	xsi_register_didat("work_a_3909560373_3212880686", "isim/SigGenTopNy_TB_isim_beh.exe.sim/work/a_3909560373_3212880686.didat");
	xsi_register_executes(pe);
}
