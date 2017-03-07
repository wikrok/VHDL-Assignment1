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
static const char *ng0 = "C:/Users/phil/Documents/GitHub/VHDL-Assignment1/ShiftN.vhd";
extern char *STD_STANDARD;



static void work_a_0468535122_0831356973_p_0(char *t0)
{
    char t18[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    int t24;
    static char *nl0[] = {&&LAB16, &&LAB17};

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3952);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)0, 8U);
    t6 = (t0 + 2648U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 8U);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2648U);
    t2 = *((char **)t1);
    t1 = (t0 + 4032);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, 200LL);
    t9 = (t0 + 4032);
    xsi_driver_intertial_reject(t9, 200LL, 200LL);
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)1);
    if (t13 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB13;

LAB14:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)1);
    t3 = t11;
    goto LAB9;

LAB10:    xsi_set_current_line(56, ng0);
    t2 = xsi_get_transient_memory(8U);
    memset(t2, 0, 8U);
    t7 = t2;
    memset(t7, (unsigned char)0, 8U);
    t8 = (t0 + 2648U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t2, 8U);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 2648U);
    t5 = *((char **)t1);
    t14 = (3 - 7);
    t15 = (t14 * -1);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t5 + t17);
    memcpy(t1, t2, 4U);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2648U);
    t2 = *((char **)t1);
    t1 = (t0 + 4032);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, 500LL);
    t9 = (t0 + 4032);
    xsi_driver_intertial_reject(t9, 500LL, 500LL);
    goto LAB11;

LAB13:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t10 = *((unsigned char *)t5);
    t1 = (char *)((nl0) + t10);
    goto **((char **)t1);

LAB15:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2648U);
    t2 = *((char **)t1);
    t1 = (t0 + 4032);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, 700LL);
    t9 = (t0 + 4032);
    xsi_driver_intertial_reject(t9, 700LL, 700LL);
    goto LAB11;

LAB16:    xsi_set_current_line(62, ng0);
    t6 = (t0 + 2648U);
    t7 = *((char **)t6);
    t14 = (7 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t6 = (t7 + t16);
    t9 = ((STD_STANDARD) + 1112);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 7;
    t21 = (t20 + 4U);
    *((int *)t21) = 1;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t22 = (1 - 7);
    t17 = (t22 * -1);
    t17 = (t17 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t17;
    t8 = xsi_base_array_concat(t8, t18, t9, (char)99, (unsigned char)0, (char)97, t6, t19, (char)101);
    t21 = (t0 + 2648U);
    t23 = *((char **)t21);
    t21 = (t23 + 0);
    t17 = (1U + 7U);
    memcpy(t21, t8, t17);
    goto LAB15;

LAB17:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2648U);
    t2 = *((char **)t1);
    t22 = (7 - 1);
    t14 = (7 - t22);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t6 = ((STD_STANDARD) + 1112);
    t7 = (t19 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 6;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t24 = (0 - 6);
    t17 = (t24 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t5 = xsi_base_array_concat(t5, t18, t6, (char)97, t1, t19, (char)99, (unsigned char)0, (char)101);
    t8 = (t0 + 2648U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t17 = (7U + 1U);
    memcpy(t8, t5, t17);
    goto LAB15;

}


extern void work_a_0468535122_0831356973_init()
{
	static char *pe[] = {(void *)work_a_0468535122_0831356973_p_0};
	xsi_register_didat("work_a_0468535122_0831356973", "isim/Test_Mult16_1_isim_beh.exe.sim/work/a_0468535122_0831356973.didat");
	xsi_register_executes(pe);
}
