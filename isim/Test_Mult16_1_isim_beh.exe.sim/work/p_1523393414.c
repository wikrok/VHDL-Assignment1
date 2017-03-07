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
extern char *STD_STANDARD;



char *work_p_1523393414_sub_710099882_700753089(char *t1, char *t2, int t3, int t4)
{
    char t5[248];
    char t6[16];
    char t10[16];
    char t25[8];
    char *t0;
    int t7;
    int t8;
    unsigned int t9;
    int t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    int t33;
    int t34;
    int t35;
    char *t36;
    char *t37;
    int t38;
    int t39;
    unsigned char t40;
    char *t41;
    int t42;
    char *t43;
    int t44;
    int t45;
    char *t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;

LAB0:    t7 = (t4 - 1);
    t8 = (0 - t7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t9 = (t9 * 1U);
    t11 = (t4 - 1);
    t12 = (t10 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = t11;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - t11);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t5 + 4U);
    t16 = ((STD_STANDARD) + 1112);
    t17 = (t13 + 88U);
    *((char **)t17) = t16;
    t18 = (char *)alloca(t9);
    t19 = (t13 + 56U);
    *((char **)t19) = t18;
    xsi_type_set_default_value(t16, t18, t10);
    t20 = (t13 + 64U);
    *((char **)t20) = t10;
    t21 = (t13 + 80U);
    *((unsigned int *)t21) = t9;
    t22 = (t5 + 124U);
    t23 = ((STD_STANDARD) + 832);
    t24 = (t22 + 88U);
    *((char **)t24) = t23;
    t26 = (t22 + 56U);
    *((char **)t26) = t25;
    *((int *)t25) = t3;
    t27 = (t22 + 80U);
    *((unsigned int *)t27) = 4U;
    t28 = (t6 + 4U);
    *((int *)t28) = t3;
    t29 = (t6 + 8U);
    *((int *)t29) = t4;
    t30 = (t10 + 0U);
    t31 = *((int *)t30);
    t32 = (t10 + 4U);
    t33 = *((int *)t32);
    t34 = t33;
    t35 = t31;

LAB2:    if (t34 <= t35)
        goto LAB3;

LAB5:    t12 = (t13 + 56U);
    t16 = *((char **)t12);
    t12 = (t10 + 12U);
    t9 = *((unsigned int *)t12);
    t9 = (t9 * 1U);
    t0 = xsi_get_transient_memory(t9);
    memcpy(t0, t16, t9);
    t17 = (t10 + 0U);
    t7 = *((int *)t17);
    t19 = (t10 + 4U);
    t8 = *((int *)t19);
    t20 = (t10 + 8U);
    t11 = *((int *)t20);
    t21 = (t2 + 0U);
    t23 = (t21 + 0U);
    *((int *)t23) = t7;
    t23 = (t21 + 4U);
    *((int *)t23) = t8;
    t23 = (t21 + 8U);
    *((int *)t23) = t11;
    t14 = (t8 - t7);
    t15 = (t14 * t11);
    t15 = (t15 + 1);
    t23 = (t21 + 12U);
    *((unsigned int *)t23) = t15;

LAB1:    return t0;
LAB3:    t36 = (t22 + 56U);
    t37 = *((char **)t36);
    t38 = *((int *)t37);
    t39 = xsi_vhdl_mod(t38, 2);
    t40 = ((unsigned char)(t39));
    t36 = (t13 + 56U);
    t41 = *((char **)t36);
    t36 = (t10 + 0U);
    t42 = *((int *)t36);
    t43 = (t10 + 8U);
    t44 = *((int *)t43);
    t45 = (t34 - t42);
    t15 = (t45 * t44);
    t46 = (t10 + 4U);
    t47 = *((int *)t46);
    xsi_vhdl_check_range_of_index(t42, t47, t44, t34);
    t48 = (1U * t15);
    t49 = (0 + t48);
    t50 = (t41 + t49);
    *((unsigned char *)t50) = t40;
    t12 = (t22 + 56U);
    t16 = *((char **)t12);
    t7 = *((int *)t16);
    t8 = (t7 / 2);
    t12 = (t22 + 56U);
    t17 = *((char **)t12);
    t12 = (t17 + 0);
    *((int *)t12) = t8;

LAB4:    if (t34 == t35)
        goto LAB5;

LAB6:    t7 = (t34 + 1);
    t34 = t7;
    goto LAB2;

LAB7:;
}

int work_p_1523393414_sub_270007089_700753089(char *t1, char *t2, char *t3)
{
    char t4[248];
    char t5[24];
    char t8[16];
    char t25[8];
    int t0;
    char *t6;
    unsigned int t7;
    char *t9;
    unsigned int t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    unsigned char t29;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    int t34;
    int t35;
    int t36;
    char *t37;
    char *t38;
    int t39;
    char *t40;
    int t41;
    int t42;
    char *t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned char t48;
    unsigned char t49;
    char *t50;
    char *t51;
    int t52;
    int t53;
    int t54;
    char *t55;

LAB0:    t6 = (t3 + 12U);
    t7 = *((unsigned int *)t6);
    t7 = (t7 * 1U);
    t9 = (t3 + 12U);
    t10 = *((unsigned int *)t9);
    t11 = (t10 - 1);
    t12 = (t8 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = t11;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - t11);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t4 + 4U);
    t16 = ((STD_STANDARD) + 1112);
    t17 = (t13 + 88U);
    *((char **)t17) = t16;
    t18 = (char *)alloca(t7);
    t19 = (t13 + 56U);
    *((char **)t19) = t18;
    memcpy(t18, t2, t7);
    t20 = (t13 + 64U);
    *((char **)t20) = t8;
    t21 = (t13 + 80U);
    *((unsigned int *)t21) = t7;
    t22 = (t4 + 124U);
    t23 = ((STD_STANDARD) + 832);
    t24 = (t22 + 88U);
    *((char **)t24) = t23;
    t26 = (t22 + 56U);
    *((char **)t26) = t25;
    *((int *)t25) = 0;
    t27 = (t22 + 80U);
    *((unsigned int *)t27) = 4U;
    t28 = (t5 + 4U);
    t29 = (t2 != 0);
    if (t29 == 1)
        goto LAB3;

LAB2:    t30 = (t5 + 12U);
    *((char **)t30) = t3;
    t31 = (t8 + 0U);
    t32 = *((int *)t31);
    t33 = (t8 + 4U);
    t34 = *((int *)t33);
    t35 = t34;
    t36 = t32;

LAB4:    if (t35 <= t36)
        goto LAB5;

LAB7:    t6 = (t22 + 56U);
    t9 = *((char **)t6);
    t11 = *((int *)t9);
    t0 = t11;

LAB1:    return t0;
LAB3:    *((char **)t28) = t2;
    goto LAB2;

LAB5:    t37 = (t13 + 56U);
    t38 = *((char **)t37);
    t37 = (t8 + 0U);
    t39 = *((int *)t37);
    t40 = (t8 + 8U);
    t41 = *((int *)t40);
    t42 = (t35 - t39);
    t15 = (t42 * t41);
    t43 = (t8 + 4U);
    t44 = *((int *)t43);
    xsi_vhdl_check_range_of_index(t39, t44, t41, t35);
    t45 = (1U * t15);
    t46 = (0 + t45);
    t47 = (t38 + t46);
    t48 = *((unsigned char *)t47);
    t49 = (t48 == (unsigned char)1);
    if (t49 != 0)
        goto LAB8;

LAB10:
LAB9:
LAB6:    if (t35 == t36)
        goto LAB7;

LAB11:    t11 = (t35 + 1);
    t35 = t11;
    goto LAB4;

LAB8:    t50 = (t22 + 56U);
    t51 = *((char **)t50);
    t52 = *((int *)t51);
    t53 = xsi_vhdl_pow(2, t35);
    t54 = (t52 + t53);
    t50 = (t22 + 56U);
    t55 = *((char **)t50);
    t50 = (t55 + 0);
    *((int *)t50) = t54;
    goto LAB9;

LAB12:;
}


extern void work_p_1523393414_init()
{
	static char *se[] = {(void *)work_p_1523393414_sub_710099882_700753089,(void *)work_p_1523393414_sub_270007089_700753089};
	xsi_register_didat("work_p_1523393414", "isim/Test_Mult16_1_isim_beh.exe.sim/work/p_1523393414.didat");
	xsi_register_subprogram_executes(se);
}
