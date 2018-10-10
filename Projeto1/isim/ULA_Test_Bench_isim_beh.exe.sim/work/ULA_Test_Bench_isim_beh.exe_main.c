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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_2975079076_3536676896_init();
    work_a_0440387766_4229116990_init();
    work_a_0253612051_3487774783_init();
    work_a_2156228941_0438814506_init();
    work_a_2764649485_3745244343_init();
    work_a_3635856114_3212880686_init();
    work_a_2188402129_0923126407_init();
    work_a_1024813177_2009174857_init();
    work_a_3735238183_2042998152_init();
    work_a_2187592342_1003818040_init();
    work_a_4001558251_0213726256_init();
    work_a_1060184821_3653592685_init();
    work_a_3877883856_2372691052_init();


    xsi_register_tops("work_a_3877883856_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
