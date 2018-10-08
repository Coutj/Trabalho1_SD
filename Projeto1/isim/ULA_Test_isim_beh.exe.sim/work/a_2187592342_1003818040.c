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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/juan/Documents/Sistemas_digitais/Projeto1/contador.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );


static void work_a_2187592342_1003818040_p_0(char *t0)
{
    char t7[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2944);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t8 = (t0 + 4840U);
    t10 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t7, t9, t8, 1);
    t11 = (t0 + 3024);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 23U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 1648U);
    t8 = *((char **)t2);
    t2 = ((IEEE_P_2592010699) + 4000);
    t1 = xsi_vhdl_greater(t2, t3, 23U, t8, 23U);
    if (t1 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3088);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 992U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(56, ng0);
    t9 = (t0 + 3088);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(57, ng0);
    t2 = xsi_get_transient_memory(23U);
    memset(t2, 0, 23U);
    t3 = t2;
    memset(t3, (unsigned char)2, 23U);
    t8 = (t0 + 3024);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 23U);
    xsi_driver_first_trans_fast(t8);
    goto LAB9;

}


extern void work_a_2187592342_1003818040_init()
{
	static char *pe[] = {(void *)work_a_2187592342_1003818040_p_0};
	xsi_register_didat("work_a_2187592342_1003818040", "isim/ULA_Test_isim_beh.exe.sim/work/a_2187592342_1003818040.didat");
	xsi_register_executes(pe);
}
