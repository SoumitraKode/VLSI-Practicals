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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/VLSI_DESIGN/four_bit_alu/four_bit_alu_arch.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833316239837_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16447329934917513135_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16447329948342641973_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1366267000076357978_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );


static void work_a_3576038217_3212880686_p_0(char *t0)
{
    char t23[16];
    char t30[16];
    char t42[16];
    char t43[16];
    char t44[16];
    char t45[16];
    char t46[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned char t47;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6136);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB11:    t5 = (t0 + 6139);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB12:    t8 = (t0 + 6142);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB13:    t11 = (t0 + 6145);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB14:    t14 = (t0 + 6148);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB15:    t17 = (t0 + 6151);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB16:    t20 = (t0 + 6154);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB17:
LAB10:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6032U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 6048U);
    t36 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t2, t1, t5, t3);
    if (t36 != 0)
        goto LAB33;

LAB35:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 6032U);
    t1 = xsi_base_array_concat(t1, t30, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4000);
    t11 = (t0 + 6048U);
    t6 = xsi_base_array_concat(t6, t42, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t23, t1, t30, t6, t42);
    t14 = (t23 + 12U);
    t33 = *((unsigned int *)t14);
    t34 = (1U * t33);
    t36 = (5U != t34);
    if (t36 == 1)
        goto LAB38;

LAB39:    t15 = (t0 + 3912);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 5U);
    xsi_driver_first_trans_fast(t15);

LAB34:
LAB2:    t1 = (t0 + 3800);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(52, ng0);
    t24 = (t0 + 1032U);
    t25 = *((char **)t24);
    t24 = (t0 + 6032U);
    t26 = (t0 + 1192U);
    t27 = *((char **)t26);
    t26 = (t0 + 6048U);
    t28 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t23, t25, t24, t27, t26);
    t31 = ((IEEE_P_2592010699) + 4000);
    t29 = xsi_base_array_concat(t29, t30, t31, (char)99, (unsigned char)2, (char)97, t28, t23, (char)101);
    t32 = (t23 + 12U);
    t33 = *((unsigned int *)t32);
    t34 = (1U * t33);
    t35 = (1U + t34);
    t36 = (5U != t35);
    if (t36 == 1)
        goto LAB19;

LAB20:    t37 = (t0 + 3912);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    memcpy(t41, t29, 5U);
    xsi_driver_first_trans_fast(t37);
    goto LAB2;

LAB4:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6032U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 6048U);
    t6 = ieee_p_2592010699_sub_16447329934917513135_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t9 = ((IEEE_P_2592010699) + 4000);
    t8 = xsi_base_array_concat(t8, t30, t9, (char)99, (unsigned char)2, (char)97, t6, t23, (char)101);
    t11 = (t23 + 12U);
    t33 = *((unsigned int *)t11);
    t34 = (1U * t33);
    t35 = (1U + t34);
    t36 = (5U != t35);
    if (t36 == 1)
        goto LAB21;

LAB22:    t12 = (t0 + 3912);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 5U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB5:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6032U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 6048U);
    t6 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t9 = ((IEEE_P_2592010699) + 4000);
    t8 = xsi_base_array_concat(t8, t30, t9, (char)99, (unsigned char)2, (char)97, t6, t23, (char)101);
    t11 = (t23 + 12U);
    t33 = *((unsigned int *)t11);
    t34 = (1U * t33);
    t35 = (1U + t34);
    t36 = (5U != t35);
    if (t36 == 1)
        goto LAB23;

LAB24:    t12 = (t0 + 3912);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 5U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB6:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6032U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 6048U);
    t6 = ieee_p_2592010699_sub_16439989833316239837_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t9 = ((IEEE_P_2592010699) + 4000);
    t8 = xsi_base_array_concat(t8, t30, t9, (char)99, (unsigned char)2, (char)97, t6, t23, (char)101);
    t11 = (t23 + 12U);
    t33 = *((unsigned int *)t11);
    t34 = (1U * t33);
    t35 = (1U + t34);
    t36 = (5U != t35);
    if (t36 == 1)
        goto LAB25;

LAB26:    t12 = (t0 + 3912);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 5U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB7:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6032U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 6048U);
    t6 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t9 = ((IEEE_P_2592010699) + 4000);
    t8 = xsi_base_array_concat(t8, t30, t9, (char)99, (unsigned char)2, (char)97, t6, t23, (char)101);
    t11 = (t23 + 12U);
    t33 = *((unsigned int *)t11);
    t34 = (1U * t33);
    t35 = (1U + t34);
    t36 = (5U != t35);
    if (t36 == 1)
        goto LAB27;

LAB28:    t12 = (t0 + 3912);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 5U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB8:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6032U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 6048U);
    t6 = ieee_p_2592010699_sub_16447329948342641973_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t9 = ((IEEE_P_2592010699) + 4000);
    t8 = xsi_base_array_concat(t8, t30, t9, (char)99, (unsigned char)2, (char)97, t6, t23, (char)101);
    t11 = (t23 + 12U);
    t33 = *((unsigned int *)t11);
    t34 = (1U * t33);
    t35 = (1U + t34);
    t36 = (5U != t35);
    if (t36 == 1)
        goto LAB29;

LAB30:    t12 = (t0 + 3912);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 5U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB9:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 6032U);
    t1 = xsi_base_array_concat(t1, t30, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4000);
    t11 = (t0 + 6048U);
    t6 = xsi_base_array_concat(t6, t42, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t23, t1, t30, t6, t42);
    t14 = (t23 + 12U);
    t33 = *((unsigned int *)t14);
    t34 = (1U * t33);
    t36 = (5U != t34);
    if (t36 == 1)
        goto LAB31;

LAB32:    t15 = (t0 + 3912);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 5U);
    xsi_driver_first_trans_fast(t15);
    goto LAB2;

LAB18:;
LAB19:    xsi_size_not_matching(5U, t35, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(5U, t35, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(5U, t35, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(5U, t35, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(5U, t35, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(5U, t35, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(5U, t34, 0);
    goto LAB32;

LAB33:    xsi_set_current_line(73, ng0);
    t6 = (t0 + 1032U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4000);
    t11 = (t0 + 6032U);
    t6 = xsi_base_array_concat(t6, t44, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = (t0 + 1192U);
    t14 = *((char **)t12);
    t12 = (t0 + 6048U);
    t15 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t45, t14, t12);
    t18 = ((IEEE_P_2592010699) + 4000);
    t17 = xsi_base_array_concat(t17, t46, t18, (char)99, (unsigned char)2, (char)97, t15, t45, (char)101);
    t20 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t43, t6, t44, t17, t46);
    t21 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t42, t20, t43, 1);
    t24 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t30, t21, t42);
    t25 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t23, t24, t30, 1);
    t26 = (t23 + 12U);
    t33 = *((unsigned int *)t26);
    t34 = (1U * t33);
    t47 = (5U != t34);
    if (t47 == 1)
        goto LAB36;

LAB37:    t27 = (t0 + 3912);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t25, 5U);
    xsi_driver_first_trans_fast(t27);
    goto LAB34;

LAB36:    xsi_size_not_matching(5U, t34, 0);
    goto LAB37;

LAB38:    xsi_size_not_matching(5U, t34, 0);
    goto LAB39;

}

static void work_a_3576038217_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (4 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3976);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 3816);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3576038217_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(80, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4040);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3832);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3576038217_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3576038217_3212880686_p_0,(void *)work_a_3576038217_3212880686_p_1,(void *)work_a_3576038217_3212880686_p_2};
	xsi_register_didat("work_a_3576038217_3212880686", "isim/four_bit_alu_tb_isim_beh.exe.sim/work/a_3576038217_3212880686.didat");
	xsi_register_executes(pe);
}
