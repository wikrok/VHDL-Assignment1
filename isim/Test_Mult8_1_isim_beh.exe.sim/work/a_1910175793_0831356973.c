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
static const char *ng0 = "C:/Users/phil/Documents/GitHub/VHDL-Assignment1/AllZero.vhd";



static void work_a_1910175793_0831356973_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2872);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_delta(t1, 0U, 1, 1000LL);
    t6 = (t0 + 2872);
    xsi_driver_intertial_reject(t6, 1000LL, 1000LL);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 4544);
    *((int *)t1) = 7;
    t2 = (t0 + 4548);
    *((int *)t2) = 0;
    t7 = 7;
    t8 = 0;

LAB2:    if (t7 >= t8)
        goto LAB3;

LAB5:    t1 = (t0 + 2792);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 4544);
    t9 = *((int *)t3);
    t10 = (t9 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t5 = (t4 + t13);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)1);
    if (t15 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB4:    t1 = (t0 + 4544);
    t7 = *((int *)t1);
    t2 = (t0 + 4548);
    t8 = *((int *)t2);
    if (t7 == t8)
        goto LAB5;

LAB9:    t9 = (t7 + -1);
    t7 = t9;
    t3 = (t0 + 4544);
    *((int *)t3) = t7;
    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);
    t6 = (t0 + 2872);
    t16 = (t6 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)0;
    xsi_driver_first_trans_delta(t6, 0U, 1, 1000LL);
    t20 = (t0 + 2872);
    xsi_driver_intertial_reject(t20, 1000LL, 1000LL);
    goto LAB7;

}


extern void work_a_1910175793_0831356973_init()
{
	static char *pe[] = {(void *)work_a_1910175793_0831356973_p_0};
	xsi_register_didat("work_a_1910175793_0831356973", "isim/Test_Mult8_1_isim_beh.exe.sim/work/a_1910175793_0831356973.didat");
	xsi_register_executes(pe);
}
