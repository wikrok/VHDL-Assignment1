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
static const char *ng0 = "C:/Users/phil/Documents/GitHub/VHDL-Assignment1/Test_Concat_1.vhd";
extern char *WORK_P_1523393414;
extern char *STD_TEXTIO;

char *work_p_1523393414_sub_710099882_700753089(char *, char *, int , int );


static void work_a_3413121899_0632001823_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    char *t11;
    int64 t12;

LAB0:    t1 = (t0 + 2904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = work_p_1523393414_sub_710099882_700753089(WORK_P_1523393414, t3, 2, 4);
    t4 = (4U != 4U);
    if (t4 == 1)
        goto LAB4;

LAB5:    t5 = (t0 + 3304);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(54, ng0);
    t2 = work_p_1523393414_sub_710099882_700753089(WORK_P_1523393414, t3, 5, 4);
    t5 = (t3 + 12U);
    t10 = *((unsigned int *)t5);
    t10 = (t10 * 1U);
    t4 = (4U != t10);
    if (t4 == 1)
        goto LAB6;

LAB7:    t6 = (t0 + 3368);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(55, ng0);
    t2 = work_p_1523393414_sub_710099882_700753089(WORK_P_1523393414, t3, 10, 4);
    t5 = (t3 + 12U);
    t10 = *((unsigned int *)t5);
    t10 = (t10 * 1U);
    t4 = (4U != t10);
    if (t4 == 1)
        goto LAB8;

LAB9:    t6 = (t0 + 3432);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(56, ng0);
    t2 = work_p_1523393414_sub_710099882_700753089(WORK_P_1523393414, t3, 6, 4);
    t5 = (t3 + 12U);
    t10 = *((unsigned int *)t5);
    t10 = (t10 * 1U);
    t4 = (4U != t10);
    if (t4 == 1)
        goto LAB10;

LAB11:    t6 = (t0 + 3496);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(58, ng0);
    t12 = (5 * 1000LL);
    t2 = (t0 + 2712);
    xsi_process_wait(t2, t12);

LAB14:    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB4:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB5;

LAB6:    xsi_size_not_matching(4U, t10, 0);
    goto LAB7;

LAB8:    xsi_size_not_matching(4U, t10, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(4U, t10, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2712);
    t5 = (t0 + 2248U);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    memcpy(t3, t7, 16U);
    t6 = (t0 + 5608U);
    std_textio_write2(STD_TEXTIO, t2, t5, t3, t6, (unsigned char)0, 0);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2712);
    t5 = ((STD_TEXTIO) + 1480U);
    t6 = (t0 + 2248U);
    std_textio_writeline(STD_TEXTIO, t2, t5, t6);
    xsi_set_current_line(63, ng0);
    t12 = (1000 * 1000000LL);
    t2 = (t0 + 2712);
    xsi_process_wait(t2, t12);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}


extern void work_a_3413121899_0632001823_init()
{
	static char *pe[] = {(void *)work_a_3413121899_0632001823_p_0};
	xsi_register_didat("work_a_3413121899_0632001823", "isim/Test_Concat_1_isim_beh.exe.sim/work/a_3413121899_0632001823.didat");
	xsi_register_executes(pe);
}
