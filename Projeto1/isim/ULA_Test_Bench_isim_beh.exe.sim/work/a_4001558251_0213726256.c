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
static const char *ng0 = "/home/juan/Documents/Sistemas_digitais/Projeto1/contador2segundos.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4001558251_0213726256_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    int t12;
    char *t13;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2944);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 == 1)
        goto LAB8;

LAB9:    t4 = (t0 + 1648U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 == 16);
    t3 = t10;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1648U);
    t4 = *((char **)t1);
    t9 = *((int *)t4);
    t12 = (t9 + 1);
    t1 = (t0 + 1648U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t12;

LAB6:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1648U);
    t4 = *((char **)t1);
    t9 = *((int *)t4);
    t2 = (t9 == 16);
    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1648U);
    t11 = *((char **)t4);
    t4 = (t11 + 0);
    *((int *)t4) = 0;
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3024);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    t3 = (unsigned char)1;
    goto LAB10;

LAB11:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3024);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

}


extern void work_a_4001558251_0213726256_init()
{
	static char *pe[] = {(void *)work_a_4001558251_0213726256_p_0};
	xsi_register_didat("work_a_4001558251_0213726256", "isim/ULA_Test_Bench_isim_beh.exe.sim/work/a_4001558251_0213726256.didat");
	xsi_register_executes(pe);
}
