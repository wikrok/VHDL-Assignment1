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



void work_p_0439776357_sub_885265143_3800790901(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, int64 t6, int64 t7)
{
    char t9[24];
    char *t10;
    char *t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int64 t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t10 = (t9 + 4U);
    *((int64 *)t10) = t6;
    t11 = (t9 + 12U);
    *((int64 *)t11) = t7;

LAB2:
LAB3:    t12 = (0 + t3);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)1;
    xsi_driver_first_trans_delta(t5, t12, 1, t7);
    t17 = (t7 + t6);
    t18 = (0 + t3);
    t19 = (t5 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)0;
    xsi_driver_subsequent_trans_delta(t5, t18, 1, t17);
    t23 = (0 + t3);
    xsi_driver_intertial_reject(t5, t7, t7);
    t17 = (t7 + t6);
    xsi_process_wait(t1, t17);

LAB9:    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t15 = (t14 + 2480U);
    *((unsigned int *)t15) = 1U;
    t16 = (t1 + 88U);
    t19 = *((char **)t16);
    t20 = (t19 + 0U);
    getcontext(t20);
    t21 = (t1 + 88U);
    t22 = *((char **)t21);
    t24 = (t22 + 2480U);
    t12 = *((unsigned int *)t24);
    if (t12 == 1)
        goto LAB10;

LAB11:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB7:
LAB8:
LAB6:    goto LAB2;

LAB4:;
LAB5:
LAB1:    return;
LAB10:    xsi_saveStackAndSuspend(t1);
    goto LAB11;

}


extern void work_p_0439776357_init()
{
	static char *se[] = {(void *)work_p_0439776357_sub_885265143_3800790901};
	xsi_register_didat("work_p_0439776357", "isim/Test_QuadAnd_1_isim_beh.exe.sim/work/p_0439776357.didat");
	xsi_register_subprogram_executes(se);
}
