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
static const char *ng0 = "C:/Users/phil/Documents/GitHub/VHDL-Assignment1/And4.vhd";



static void work_a_2660387617_0831356973_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(12, ng0);

LAB3:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    if (t6 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    t4 = (t0 + 3352);
    t13 = (t4 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t1;
    xsi_driver_first_trans_delta(t4, 0U, 1, 700LL);
    t17 = (t0 + 3352);
    xsi_driver_intertial_reject(t17, 700LL, 700LL);

LAB2:    t18 = (t0 + 3272);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t4 = (t0 + 1512U);
    t11 = *((char **)t4);
    t12 = *((unsigned char *)t11);
    t1 = t12;
    goto LAB7;

LAB8:    t4 = (t0 + 1352U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t2 = t10;
    goto LAB10;

LAB11:    t4 = (t0 + 1192U);
    t7 = *((char **)t4);
    t8 = *((unsigned char *)t7);
    t3 = t8;
    goto LAB13;

}


extern void work_a_2660387617_0831356973_init()
{
	static char *pe[] = {(void *)work_a_2660387617_0831356973_p_0};
	xsi_register_didat("work_a_2660387617_0831356973", "isim/Test_QuadAnd_1_isim_beh.exe.sim/work/a_2660387617_0831356973.didat");
	xsi_register_executes(pe);
}
