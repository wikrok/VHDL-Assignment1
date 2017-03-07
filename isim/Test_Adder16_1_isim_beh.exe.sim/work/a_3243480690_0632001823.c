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
static const char *ng0 = "C:/Users/phil/Dropbox/Uni/3rd Year/VHDL/VHDL-Assignment1-master/Test_Adder16_1.vhd";
extern char *WORK_P_1523393414;
extern char *STD_TEXTIO;

int work_p_1523393414_sub_270007089_700753089(char *, char *, char *);
char *work_p_1523393414_sub_710099882_700753089(char *, char *, int , int );


static void work_a_3243480690_0632001823_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 7044U);
    t3 = work_p_1523393414_sub_270007089_700753089(WORK_P_1523393414, t2, t1);
    t4 = (t0 + 4048);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 3952);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3243480690_0632001823_p_1(char *t0)
{
    char t16[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned char t18;
    int64 t19;
    int t20;

LAB0:    t1 = (t0 + 3632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 7220);
    *((int *)t2) = 1000;
    t3 = (t0 + 7224);
    *((int *)t3) = 1025;
    t4 = 1000;
    t5 = 1025;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(69, ng0);
    t19 = (1000 * 1000000LL);
    t2 = (t0 + 3440);
    xsi_process_wait(t2, t19);

LAB24:    *((char **)t1) = &&LAB25;

LAB1:    return;
LAB5:    xsi_set_current_line(57, ng0);
    t6 = (t0 + 7228);
    *((int *)t6) = 0;
    t7 = (t0 + 7232);
    *((int *)t7) = 15;
    t8 = 0;
    t9 = 15;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:
LAB6:    t2 = (t0 + 7220);
    t4 = *((int *)t2);
    t3 = (t0 + 7224);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB21:    t8 = (t4 + 1);
    t4 = t8;
    t6 = (t0 + 7220);
    *((int *)t6) = t4;
    goto LAB4;

LAB9:    xsi_set_current_line(58, ng0);
    t10 = (t0 + 7220);
    t11 = (t0 + 4112);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((int *)t15) = *((int *)t10);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 7228);
    t3 = (t0 + 4176);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = *((int *)t2);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 7220);
    t3 = work_p_1523393414_sub_710099882_700753089(WORK_P_1523393414, t16, *((int *)t2), 16);
    t6 = (t16 + 12U);
    t17 = *((unsigned int *)t6);
    t17 = (t17 * 1U);
    t18 = (16U != t17);
    if (t18 == 1)
        goto LAB12;

LAB13:    t7 = (t0 + 4240);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 7228);
    t3 = work_p_1523393414_sub_710099882_700753089(WORK_P_1523393414, t16, *((int *)t2), 16);
    t6 = (t16 + 12U);
    t17 = *((unsigned int *)t6);
    t17 = (t17 * 1U);
    t18 = (16U != t17);
    if (t18 == 1)
        goto LAB14;

LAB15:    t7 = (t0 + 4304);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(62, ng0);
    t19 = (5 * 1000LL);
    t2 = (t0 + 3440);
    xsi_process_wait(t2, t19);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB10:    t2 = (t0 + 7228);
    t8 = *((int *)t2);
    t3 = (t0 + 7232);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB11;

LAB20:    t20 = (t8 + 1);
    t8 = t20;
    t6 = (t0 + 7228);
    *((int *)t6) = t8;
    goto LAB8;

LAB12:    xsi_size_not_matching(16U, t17, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(16U, t17, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3440);
    t3 = (t0 + 2728U);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    memcpy(t16, t7, 16U);
    t6 = (t0 + 7044U);
    std_textio_write2(STD_TEXTIO, t2, t3, t16, t6, (unsigned char)0, 0);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3440);
    t3 = ((STD_TEXTIO) + 1480U);
    t6 = (t0 + 2728U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t6);
    goto LAB10;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB22:    goto LAB2;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

}


extern void work_a_3243480690_0632001823_init()
{
	static char *pe[] = {(void *)work_a_3243480690_0632001823_p_0,(void *)work_a_3243480690_0632001823_p_1};
	xsi_register_didat("work_a_3243480690_0632001823", "isim/Test_Adder16_1_isim_beh.exe.sim/work/a_3243480690_0632001823.didat");
	xsi_register_executes(pe);
}
