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
static const char *ng0 = "C:/Users/phil/Documents/GitHub/VHDL-Assignment1/Test_Mult16_1.vhd";
extern char *WORK_P_0439776357;
extern char *WORK_P_1523393414;
extern char *STD_TEXTIO;
extern char *STD_STANDARD;

void work_p_0439776357_sub_885265143_3800790901(char *, char *, char *, unsigned int , unsigned int , char *, int64 , int64 );
int work_p_1523393414_sub_270007089_700753089(char *, char *, char *);
char *work_p_1523393414_sub_710099882_700753089(char *, char *, int , int );


static void work_a_0978286156_0632001823_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3760);
    t2 = (t0 + 1632U);
    t3 = (t0 + 5192);
    t4 = (10 * 1000LL);
    t5 = (10 * 1000LL);
    work_p_0439776357_sub_885265143_3800790901(WORK_P_0439776357, t1, t2, 0U, 0U, t3, t4, t5);

LAB1:    return;
}

static void work_a_0978286156_0632001823_p_1(char *t0)
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

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 8680U);
    t3 = work_p_1523393414_sub_270007089_700753089(WORK_P_1523393414, t2, t1);
    t4 = (t0 + 5256);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 5016);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0978286156_0632001823_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int64 t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 5320);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    t6 = (20 * 1000LL);
    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_subsequent_trans_delta(t7, 0U, 1, t6);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0978286156_0632001823_p_3(char *t0)
{
    char t16[16];
    char t23[8];
    char t25[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
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
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    int64 t22;
    int t24;

LAB0:    t1 = (t0 + 4696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 4504);
    t3 = ((STD_TEXTIO) + 1480U);
    t4 = (t0 + 3152U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 8912);
    *((int *)t2) = 0;
    t3 = (t0 + 8916);
    *((int *)t3) = 255;
    t5 = 0;
    t6 = 255;

LAB4:    if (t5 <= t6)
        goto LAB5;

LAB7:    xsi_set_current_line(89, ng0);
    t22 = (100000 * 1000000LL);
    t2 = (t0 + 4504);
    xsi_process_wait(t2, t22);

LAB42:    *((char **)t1) = &&LAB43;

LAB1:    return;
LAB5:    xsi_set_current_line(63, ng0);
    t4 = (t0 + 8920);
    *((int *)t4) = 0;
    t7 = (t0 + 8924);
    *((int *)t7) = 255;
    t8 = 0;
    t9 = 255;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:
LAB6:    t2 = (t0 + 8912);
    t5 = *((int *)t2);
    t3 = (t0 + 8916);
    t6 = *((int *)t3);
    if (t5 == t6)
        goto LAB7;

LAB39:    t8 = (t5 + 1);
    t5 = t8;
    t4 = (t0 + 8912);
    *((int *)t4) = t5;
    goto LAB4;

LAB9:    xsi_set_current_line(64, ng0);
    t10 = (t0 + 8912);
    t11 = (t0 + 5384);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((int *)t15) = *((int *)t10);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 8920);
    t3 = (t0 + 5448);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = *((int *)t2);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 8912);
    t3 = work_p_1523393414_sub_710099882_700753089(WORK_P_1523393414, t16, *((int *)t2), 8);
    t4 = (t16 + 12U);
    t17 = *((unsigned int *)t4);
    t17 = (t17 * 1U);
    t18 = (8U != t17);
    if (t18 == 1)
        goto LAB12;

LAB13:    t7 = (t0 + 5512);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 8920);
    t3 = work_p_1523393414_sub_710099882_700753089(WORK_P_1523393414, t16, *((int *)t2), 8);
    t4 = (t16 + 12U);
    t17 = *((unsigned int *)t4);
    t17 = (t17 * 1U);
    t18 = (8U != t17);
    if (t18 == 1)
        goto LAB14;

LAB15:    t7 = (t0 + 5576);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(67, ng0);

LAB18:    t2 = (t0 + 5032);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB10:    t2 = (t0 + 8920);
    t8 = *((int *)t2);
    t3 = (t0 + 8924);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB11;

LAB38:    t24 = (t8 + 1);
    t8 = t24;
    t4 = (t0 + 8920);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    xsi_size_not_matching(8U, t17, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(8U, t17, 0);
    goto LAB15;

LAB16:    t4 = (t0 + 5032);
    *((int *)t4) = 0;
    xsi_set_current_line(68, ng0);
    t22 = (1 * 1000LL);
    t2 = (t0 + 4504);
    xsi_process_wait(t2, t22);

LAB25:    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB17:    t3 = (t0 + 1632U);
    t19 = xsi_signal_has_event(t3);
    if (t19 == 1)
        goto LAB20;

LAB21:    t18 = (unsigned char)0;

LAB22:    if (t18 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    t4 = (t0 + 1672U);
    t7 = *((char **)t4);
    t20 = *((unsigned char *)t7);
    t21 = (t20 == (unsigned char)1);
    t18 = t21;
    goto LAB22;

LAB23:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 3152U);
    t4 = (t0 + 1032U);
    t7 = *((char **)t4);
    memcpy(t23, t7, 8U);
    t4 = (t0 + 8664U);
    std_textio_write2(STD_TEXTIO, t2, t3, t23, t4, (unsigned char)0, 0);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 3152U);
    t4 = (t0 + 8928);
    t10 = (t16 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 1;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t24 = (1 - 1);
    t17 = (t24 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t16, (unsigned char)0, 0);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 3152U);
    t4 = (t0 + 1192U);
    t7 = *((char **)t4);
    memcpy(t25, t7, 8U);
    t4 = (t0 + 8664U);
    std_textio_write2(STD_TEXTIO, t2, t3, t25, t4, (unsigned char)0, 0);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 3152U);
    t4 = (t0 + 8929);
    t10 = (t16 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 1;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t24 = (1 - 1);
    t17 = (t24 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t16, (unsigned char)0, 0);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 5640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t22 = (20 * 1000LL);
    t11 = (t0 + 5640);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)0;
    xsi_driver_subsequent_trans_delta(t11, 0U, 1, t22);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 3152U);
    t4 = ((STD_STANDARD) + 576);
    t22 = xsi_get_sim_current_time();
    t7 = xsi_int64_to_mem(t22);
    t10 = xsi_string_variable_get_image(t16, t4, t7);
    std_textio_write7(STD_TEXTIO, t2, t3, t10, t16, (unsigned char)0, 0);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 3152U);
    t4 = (t0 + 8930);
    t10 = (t16 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 1;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t24 = (1 - 1);
    t17 = (t24 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t16, (unsigned char)0, 0);
    xsi_set_current_line(80, ng0);

LAB29:    t2 = (t0 + 5080);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

LAB27:    t3 = (t0 + 5080);
    *((int *)t3) = 0;
    xsi_set_current_line(81, ng0);

LAB33:    t2 = (t0 + 5096);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB28:    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t18 = *((unsigned char *)t4);
    t19 = (t18 == (unsigned char)1);
    if (t19 == 1)
        goto LAB27;
    else
        goto LAB29;

LAB30:    goto LAB28;

LAB31:    t4 = (t0 + 5096);
    *((int *)t4) = 0;
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 3152U);
    t4 = ((STD_STANDARD) + 576);
    t22 = xsi_get_sim_current_time();
    t7 = xsi_int64_to_mem(t22);
    t10 = xsi_string_variable_get_image(t16, t4, t7);
    std_textio_write7(STD_TEXTIO, t2, t3, t10, t16, (unsigned char)0, 0);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 3152U);
    t4 = (t0 + 8931);
    t10 = (t16 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 1;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t24 = (1 - 1);
    t17 = (t24 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t16, (unsigned char)0, 0);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 3152U);
    t4 = (t0 + 1992U);
    t7 = *((char **)t4);
    memcpy(t16, t7, 16U);
    t4 = (t0 + 8680U);
    std_textio_write2(STD_TEXTIO, t2, t3, t16, t4, (unsigned char)0, 0);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4504);
    t3 = (t0 + 2976U);
    t4 = (t0 + 3152U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    goto LAB10;

LAB32:    t3 = (t0 + 1632U);
    t19 = xsi_signal_has_event(t3);
    if (t19 == 1)
        goto LAB35;

LAB36:    t18 = (unsigned char)0;

LAB37:    if (t18 == 1)
        goto LAB31;
    else
        goto LAB33;

LAB34:    goto LAB32;

LAB35:    t4 = (t0 + 1672U);
    t7 = *((char **)t4);
    t20 = *((unsigned char *)t7);
    t21 = (t20 == (unsigned char)1);
    t18 = t21;
    goto LAB37;

LAB40:    goto LAB2;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

}


extern void work_a_0978286156_0632001823_init()
{
	static char *pe[] = {(void *)work_a_0978286156_0632001823_p_0,(void *)work_a_0978286156_0632001823_p_1,(void *)work_a_0978286156_0632001823_p_2,(void *)work_a_0978286156_0632001823_p_3};
	xsi_register_didat("work_a_0978286156_0632001823", "isim/Test_Mult16_1_isim_beh.exe.sim/work/a_0978286156_0632001823.didat");
	xsi_register_executes(pe);
}
