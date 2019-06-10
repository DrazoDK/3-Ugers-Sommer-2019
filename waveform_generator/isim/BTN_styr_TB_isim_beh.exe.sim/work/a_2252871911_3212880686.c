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
static const char *ng0 = "C:/Users/Bruger/Documents/Atmel Studio/7.0/3ugers_06.06.19/3-Ugers-Sommer-2019/waveform_generator/BTN_STYR.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_2252871911_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2788);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (t0 + 2840);
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

static void work_a_2252871911_3212880686_p_1(char *t0)
{
    char t22[16];
    char t24[16];
    char t34[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned char t21;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB11, &&LAB10};

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 2876);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 2912);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 2948);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2984);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 3020);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 2796);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 568U);
    t9 = xsi_signal_has_event(t3);
    if (t9 == 1)
        goto LAB18;

LAB19:    t8 = (unsigned char)0;

LAB20:    if (t8 == 1)
        goto LAB15;

LAB16:    t7 = (unsigned char)0;

LAB17:    if (t7 != 0)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 568U);
    t8 = xsi_signal_has_event(t1);
    if (t8 == 1)
        goto LAB29;

LAB30:    t7 = (unsigned char)0;

LAB31:    if (t7 == 1)
        goto LAB26;

LAB27:    t6 = (unsigned char)0;

LAB28:    if (t6 != 0)
        goto LAB23;

LAB25:
LAB24:    goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 568U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB41;

LAB42:    t8 = (unsigned char)0;

LAB43:    if (t8 == 1)
        goto LAB38;

LAB39:    t7 = (unsigned char)0;

LAB40:    if (t7 == 1)
        goto LAB35;

LAB36:    t6 = (unsigned char)0;

LAB37:    if (t6 != 0)
        goto LAB32;

LAB34:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6504U);
    t3 = (t0 + 6573);
    t5 = (t22 + 0U);
    t12 = (t5 + 0U);
    *((int *)t12) = 0;
    t12 = (t5 + 4U);
    *((int *)t12) = 3;
    t12 = (t5 + 8U);
    *((int *)t12) = 1;
    t27 = (3 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t12 = (t5 + 12U);
    *((unsigned int *)t12) = t16;
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t22);
    if (t6 != 0)
        goto LAB48;

LAB49:
LAB33:    goto LAB2;

LAB5:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 6577);
    t3 = (t0 + 3128);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t12 = (t5 + 40U);
    t15 = *((char **)t12);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2912);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 568U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB59;

LAB60:    t8 = (unsigned char)0;

LAB61:    if (t8 == 1)
        goto LAB56;

LAB57:    t7 = (unsigned char)0;

LAB58:    if (t7 == 1)
        goto LAB53;

LAB54:    t6 = (unsigned char)0;

LAB55:    if (t6 != 0)
        goto LAB50;

LAB52:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6504U);
    t3 = (t0 + 6585);
    t5 = (t22 + 0U);
    t12 = (t5 + 0U);
    *((int *)t12) = 0;
    t12 = (t5 + 4U);
    *((int *)t12) = 3;
    t12 = (t5 + 8U);
    *((int *)t12) = 1;
    t27 = (3 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t12 = (t5 + 12U);
    *((unsigned int *)t12) = t16;
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t22);
    if (t6 != 0)
        goto LAB66;

LAB67:
LAB51:    goto LAB2;

LAB7:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 6589);
    t3 = (t0 + 3128);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t12 = (t5 + 40U);
    t15 = *((char **)t12);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2912);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 568U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB79;

LAB80:    t8 = (unsigned char)0;

LAB81:    if (t8 == 1)
        goto LAB76;

LAB77:    t7 = (unsigned char)0;

LAB78:    if (t7 == 1)
        goto LAB73;

LAB74:    t6 = (unsigned char)0;

LAB75:    if (t6 != 0)
        goto LAB70;

LAB72:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6504U);
    t3 = (t0 + 6597);
    t5 = (t22 + 0U);
    t12 = (t5 + 0U);
    *((int *)t12) = 0;
    t12 = (t5 + 4U);
    *((int *)t12) = 3;
    t12 = (t5 + 8U);
    *((int *)t12) = 1;
    t27 = (3 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t12 = (t5 + 12U);
    *((unsigned int *)t12) = t16;
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t22);
    if (t6 != 0)
        goto LAB86;

LAB87:
LAB71:    goto LAB2;

LAB9:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 6601);
    t3 = (t0 + 3128);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t12 = (t5 + 40U);
    t15 = *((char **)t12);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2912);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 568U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB99;

LAB100:    t8 = (unsigned char)0;

LAB101:    if (t8 == 1)
        goto LAB96;

LAB97:    t7 = (unsigned char)0;

LAB98:    if (t7 == 1)
        goto LAB93;

LAB94:    t6 = (unsigned char)0;

LAB95:    if (t6 != 0)
        goto LAB90;

LAB92:    t1 = (t0 + 568U);
    t7 = xsi_signal_has_event(t1);
    if (t7 == 1)
        goto LAB108;

LAB109:    t6 = (unsigned char)0;

LAB110:    if (t6 != 0)
        goto LAB106;

LAB107:
LAB91:    goto LAB2;

LAB11:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 6609);
    t3 = (t0 + 3128);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t12 = (t5 + 40U);
    t15 = *((char **)t12);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 2948);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB12:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1604U);
    t15 = *((char **)t4);
    t16 = (7 - 6);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t4 = (t15 + t18);
    t19 = (t0 + 684U);
    t20 = *((char **)t19);
    t21 = *((unsigned char *)t20);
    t23 = ((IEEE_P_2592010699) + 2332);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 6;
    t26 = (t25 + 4U);
    *((int *)t26) = 0;
    t26 = (t25 + 8U);
    *((int *)t26) = -1;
    t27 = (0 - 6);
    t28 = (t27 * -1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t19 = xsi_base_array_concat(t19, t22, t23, (char)97, t4, t24, (char)99, t21, (char)101);
    t28 = (7U + 1U);
    t29 = (8U != t28);
    if (t29 == 1)
        goto LAB21;

LAB22:    t26 = (t0 + 3056);
    t30 = (t26 + 32U);
    t31 = *((char **)t30);
    t32 = (t31 + 40U);
    t33 = *((char **)t32);
    memcpy(t33, t19, 8U);
    xsi_driver_first_trans_fast(t26);
    goto LAB13;

LAB15:    t4 = (t0 + 776U);
    t12 = *((char **)t4);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t7 = t14;
    goto LAB17;

LAB18:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB20;

LAB21:    xsi_size_not_matching(8U, t28, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(50, ng0);
    t19 = (t0 + 2984);
    t20 = (t19 + 32U);
    t23 = *((char **)t20);
    t25 = (t23 + 40U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t19);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB24;

LAB26:    t2 = (t0 + 1604U);
    t4 = *((char **)t2);
    t2 = (t0 + 6488U);
    t5 = (t0 + 6561);
    t15 = (t22 + 0U);
    t19 = (t15 + 0U);
    *((int *)t19) = 0;
    t19 = (t15 + 4U);
    *((int *)t19) = 7;
    t19 = (t15 + 8U);
    *((int *)t19) = 1;
    t27 = (7 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t19 = (t15 + 12U);
    *((unsigned int *)t19) = t16;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t2, t5, t22);
    t6 = t11;
    goto LAB28;

LAB29:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t10 = (t9 == (unsigned char)3);
    t7 = t10;
    goto LAB31;

LAB32:    xsi_set_current_line(56, ng0);
    t20 = (t0 + 1604U);
    t23 = *((char **)t20);
    t16 = (7 - 6);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t20 = (t23 + t18);
    t25 = (t0 + 684U);
    t26 = *((char **)t25);
    t29 = *((unsigned char *)t26);
    t30 = ((IEEE_P_2592010699) + 2332);
    t31 = (t34 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 6;
    t32 = (t31 + 4U);
    *((int *)t32) = 0;
    t32 = (t31 + 8U);
    *((int *)t32) = -1;
    t35 = (0 - 6);
    t28 = (t35 * -1);
    t28 = (t28 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t28;
    t25 = xsi_base_array_concat(t25, t24, t30, (char)97, t20, t34, (char)99, t29, (char)101);
    t28 = (7U + 1U);
    t36 = (8U != t28);
    if (t36 == 1)
        goto LAB44;

LAB45:    t32 = (t0 + 3056);
    t33 = (t32 + 32U);
    t37 = *((char **)t33);
    t38 = (t37 + 40U);
    t39 = *((char **)t38);
    memcpy(t39, t25, 8U);
    xsi_driver_first_trans_fast(t32);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6504U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t22, t2, t1, (unsigned char)3);
    t4 = (t22 + 12U);
    t16 = *((unsigned int *)t4);
    t17 = (1U * t16);
    t6 = (4U != t17);
    if (t6 == 1)
        goto LAB46;

LAB47:    t5 = (t0 + 3128);
    t12 = (t5 + 32U);
    t15 = *((char **)t12);
    t19 = (t15 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    t1 = (t0 + 3164);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t12 = *((char **)t5);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB33;

LAB35:    t2 = (t0 + 1788U);
    t5 = *((char **)t2);
    t2 = (t0 + 6504U);
    t12 = (t0 + 6569);
    t19 = (t22 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 3;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t27 = (3 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t16;
    t21 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t5, t2, t12, t22);
    t6 = t21;
    goto LAB37;

LAB38:    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)2);
    t7 = t14;
    goto LAB40;

LAB41:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB43;

LAB44:    xsi_size_not_matching(8U, t28, 0);
    goto LAB45;

LAB46:    xsi_size_not_matching(4U, t17, 0);
    goto LAB47;

LAB48:    xsi_set_current_line(60, ng0);
    t12 = (t0 + 1604U);
    t15 = *((char **)t12);
    t12 = (t0 + 3200);
    t19 = (t12 + 32U);
    t20 = *((char **)t19);
    t23 = (t20 + 40U);
    t25 = *((char **)t23);
    memcpy(t25, t15, 8U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2876);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB33;

LAB50:    xsi_set_current_line(72, ng0);
    t20 = (t0 + 1604U);
    t23 = *((char **)t20);
    t16 = (7 - 6);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t20 = (t23 + t18);
    t25 = (t0 + 684U);
    t26 = *((char **)t25);
    t29 = *((unsigned char *)t26);
    t30 = ((IEEE_P_2592010699) + 2332);
    t31 = (t34 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 6;
    t32 = (t31 + 4U);
    *((int *)t32) = 0;
    t32 = (t31 + 8U);
    *((int *)t32) = -1;
    t35 = (0 - 6);
    t28 = (t35 * -1);
    t28 = (t28 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t28;
    t25 = xsi_base_array_concat(t25, t24, t30, (char)97, t20, t34, (char)99, t29, (char)101);
    t28 = (7U + 1U);
    t36 = (8U != t28);
    if (t36 == 1)
        goto LAB62;

LAB63:    t32 = (t0 + 3056);
    t33 = (t32 + 32U);
    t37 = *((char **)t33);
    t38 = (t37 + 40U);
    t39 = *((char **)t38);
    memcpy(t39, t25, 8U);
    xsi_driver_first_trans_fast(t32);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6504U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t22, t2, t1, (unsigned char)3);
    t4 = (t22 + 12U);
    t16 = *((unsigned int *)t4);
    t17 = (1U * t16);
    t6 = (4U != t17);
    if (t6 == 1)
        goto LAB64;

LAB65:    t5 = (t0 + 3128);
    t12 = (t5 + 32U);
    t15 = *((char **)t12);
    t19 = (t15 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    t1 = (t0 + 3164);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t12 = *((char **)t5);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB51;

LAB53:    t2 = (t0 + 1788U);
    t5 = *((char **)t2);
    t2 = (t0 + 6504U);
    t12 = (t0 + 6581);
    t19 = (t22 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 3;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t27 = (3 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t16;
    t21 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t5, t2, t12, t22);
    t6 = t21;
    goto LAB55;

LAB56:    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)2);
    t7 = t14;
    goto LAB58;

LAB59:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB61;

LAB62:    xsi_size_not_matching(8U, t28, 0);
    goto LAB63;

LAB64:    xsi_size_not_matching(4U, t17, 0);
    goto LAB65;

LAB66:    xsi_set_current_line(76, ng0);
    t12 = (t0 + 1604U);
    t15 = *((char **)t12);
    t12 = (t0 + 6488U);
    t19 = (t0 + 1696U);
    t20 = *((char **)t19);
    t19 = (t0 + 6488U);
    t23 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t24, t15, t12, t20, t19);
    t25 = (t24 + 12U);
    t16 = *((unsigned int *)t25);
    t17 = (1U * t16);
    t7 = (8U != t17);
    if (t7 == 1)
        goto LAB68;

LAB69:    t26 = (t0 + 3200);
    t30 = (t26 + 32U);
    t31 = *((char **)t30);
    t32 = (t31 + 40U);
    t33 = *((char **)t32);
    memcpy(t33, t23, 8U);
    xsi_driver_first_trans_fast(t26);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2876);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB51;

LAB68:    xsi_size_not_matching(8U, t17, 0);
    goto LAB69;

LAB70:    xsi_set_current_line(88, ng0);
    t20 = (t0 + 1604U);
    t23 = *((char **)t20);
    t16 = (7 - 6);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t20 = (t23 + t18);
    t25 = (t0 + 684U);
    t26 = *((char **)t25);
    t29 = *((unsigned char *)t26);
    t30 = ((IEEE_P_2592010699) + 2332);
    t31 = (t34 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 6;
    t32 = (t31 + 4U);
    *((int *)t32) = 0;
    t32 = (t31 + 8U);
    *((int *)t32) = -1;
    t35 = (0 - 6);
    t28 = (t35 * -1);
    t28 = (t28 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t28;
    t25 = xsi_base_array_concat(t25, t24, t30, (char)97, t20, t34, (char)99, t29, (char)101);
    t28 = (7U + 1U);
    t36 = (8U != t28);
    if (t36 == 1)
        goto LAB82;

LAB83:    t32 = (t0 + 3056);
    t33 = (t32 + 32U);
    t37 = *((char **)t33);
    t38 = (t37 + 40U);
    t39 = *((char **)t38);
    memcpy(t39, t25, 8U);
    xsi_driver_first_trans_fast(t32);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6504U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t22, t2, t1, (unsigned char)3);
    t4 = (t22 + 12U);
    t16 = *((unsigned int *)t4);
    t17 = (1U * t16);
    t6 = (4U != t17);
    if (t6 == 1)
        goto LAB84;

LAB85:    t5 = (t0 + 3128);
    t12 = (t5 + 32U);
    t15 = *((char **)t12);
    t19 = (t15 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    t1 = (t0 + 3164);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t12 = *((char **)t5);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB71;

LAB73:    t2 = (t0 + 1788U);
    t5 = *((char **)t2);
    t2 = (t0 + 6504U);
    t12 = (t0 + 6593);
    t19 = (t22 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 3;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t27 = (3 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t16;
    t21 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t5, t2, t12, t22);
    t6 = t21;
    goto LAB75;

LAB76:    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)2);
    t7 = t14;
    goto LAB78;

LAB79:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB81;

LAB82:    xsi_size_not_matching(8U, t28, 0);
    goto LAB83;

LAB84:    xsi_size_not_matching(4U, t17, 0);
    goto LAB85;

LAB86:    xsi_set_current_line(92, ng0);
    t12 = (t0 + 1604U);
    t15 = *((char **)t12);
    t12 = (t0 + 6488U);
    t19 = (t0 + 1696U);
    t20 = *((char **)t19);
    t19 = (t0 + 6488U);
    t23 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t24, t15, t12, t20, t19);
    t25 = (t24 + 12U);
    t16 = *((unsigned int *)t25);
    t17 = (1U * t16);
    t7 = (8U != t17);
    if (t7 == 1)
        goto LAB88;

LAB89:    t26 = (t0 + 3200);
    t30 = (t26 + 32U);
    t31 = *((char **)t30);
    t32 = (t31 + 40U);
    t33 = *((char **)t32);
    memcpy(t33, t23, 8U);
    xsi_driver_first_trans_fast(t26);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2876);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB71;

LAB88:    xsi_size_not_matching(8U, t17, 0);
    goto LAB89;

LAB90:    xsi_set_current_line(104, ng0);
    t20 = (t0 + 1604U);
    t23 = *((char **)t20);
    t16 = (7 - 6);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t20 = (t23 + t18);
    t25 = (t0 + 684U);
    t26 = *((char **)t25);
    t29 = *((unsigned char *)t26);
    t30 = ((IEEE_P_2592010699) + 2332);
    t31 = (t34 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 6;
    t32 = (t31 + 4U);
    *((int *)t32) = 0;
    t32 = (t31 + 8U);
    *((int *)t32) = -1;
    t35 = (0 - 6);
    t28 = (t35 * -1);
    t28 = (t28 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t28;
    t25 = xsi_base_array_concat(t25, t24, t30, (char)97, t20, t34, (char)99, t29, (char)101);
    t28 = (7U + 1U);
    t36 = (8U != t28);
    if (t36 == 1)
        goto LAB102;

LAB103:    t32 = (t0 + 3056);
    t33 = (t32 + 32U);
    t37 = *((char **)t33);
    t38 = (t37 + 40U);
    t39 = *((char **)t38);
    memcpy(t39, t25, 8U);
    xsi_driver_first_trans_fast(t32);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6504U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t22, t2, t1, (unsigned char)3);
    t4 = (t22 + 12U);
    t16 = *((unsigned int *)t4);
    t17 = (1U * t16);
    t6 = (4U != t17);
    if (t6 == 1)
        goto LAB104;

LAB105:    t5 = (t0 + 3128);
    t12 = (t5 + 32U);
    t15 = *((char **)t12);
    t19 = (t15 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB91;

LAB93:    t2 = (t0 + 1788U);
    t5 = *((char **)t2);
    t2 = (t0 + 6504U);
    t12 = (t0 + 6605);
    t19 = (t22 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 3;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t27 = (3 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t16;
    t21 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t5, t2, t12, t22);
    t6 = t21;
    goto LAB95;

LAB96:    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)2);
    t7 = t14;
    goto LAB98;

LAB99:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    t8 = t11;
    goto LAB101;

LAB102:    xsi_size_not_matching(8U, t28, 0);
    goto LAB103;

LAB104:    xsi_size_not_matching(4U, t17, 0);
    goto LAB105;

LAB106:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1696U);
    t4 = *((char **)t2);
    t2 = (t0 + 6488U);
    t5 = (t0 + 1604U);
    t12 = *((char **)t5);
    t5 = (t0 + 6488U);
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t2, t12, t5);
    if (t10 != 0)
        goto LAB111;

LAB113:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB112:    goto LAB91;

LAB108:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)3);
    t6 = t9;
    goto LAB110;

LAB111:    xsi_set_current_line(108, ng0);
    t15 = (t0 + 3092);
    t19 = (t15 + 32U);
    t20 = *((char **)t19);
    t23 = (t20 + 40U);
    t25 = *((char **)t23);
    *((unsigned char *)t25) = (unsigned char)7;
    xsi_driver_first_trans_fast(t15);
    goto LAB112;

}


extern void work_a_2252871911_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2252871911_3212880686_p_0,(void *)work_a_2252871911_3212880686_p_1};
	xsi_register_didat("work_a_2252871911_3212880686", "isim/BTN_styr_TB_isim_beh.exe.sim/work/a_2252871911_3212880686.didat");
	xsi_register_executes(pe);
}
