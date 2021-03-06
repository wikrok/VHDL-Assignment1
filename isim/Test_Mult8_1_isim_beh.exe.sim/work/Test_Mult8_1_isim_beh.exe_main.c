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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_STANDARD;
char *IEEE_P_2592010699;
char *STD_TEXTIO;
char *WORK_P_0439776357;
char *WORK_P_1523393414;
char *WORK_P_3522511901;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_1523393414_init();
    work_p_0439776357_init();
    work_p_3522511901_init();
    work_a_0468535122_0831356973_init();
    work_a_1910175793_0831356973_init();
    work_a_1184808242_0831356973_init();
    work_a_2343956414_0632001823_init();
    work_a_1276833101_0831356973_init();
    work_a_0541641260_0831356973_init();
    work_a_0205782932_0632001823_init();
    work_a_0845231117_1506497516_init();
    work_a_1890275750_0632001823_init();
    work_a_1885759745_0632001823_init();


    xsi_register_tops("work_a_1885759745_0632001823");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    WORK_P_0439776357 = xsi_get_engine_memory("work_p_0439776357");
    WORK_P_1523393414 = xsi_get_engine_memory("work_p_1523393414");
    WORK_P_3522511901 = xsi_get_engine_memory("work_p_3522511901");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
