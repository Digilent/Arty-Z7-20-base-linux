/************************************************************************/
/*																		*/
/*	timer_ps.h	--	Timer Delay	for Zynq systems						*/
/*																		*/
/************************************************************************/
/*	Author: Sam Bobrowicz												*/
/*	Copyright 2014, Digilent Inc.										*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		Implements an accurate delay function using the scu	timer.     	*/
/*		Code from this module will cause conflicts with other code that */
/*		requires the Zynq's scu timer.									*/
/*																		*/
/*		This module contains code from the Xilinx Demo titled			*/
/*		"xscutimer_polled_example.c"									*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/* 																		*/
/*		2/14/2014(SamB): Created										*/
/*																		*/
/************************************************************************/
#ifndef TIMER_PS_H_
#define TIMER_PS_H_

#include "xil_types.h"
#include "xparameters.h"

/* ------------------------------------------------------------ */
/*					Miscellaneous Declarations					*/
/* ------------------------------------------------------------ */

#define TIMER_FREQ_HZ (650000000 / 2)

/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

int TimerInitialize(u16 TimerDeviceId);
void TimerDelay(u32 uSDelay);
u32 TimerGet();
void TimerStop();
void TimerStart();

/* ------------------------------------------------------------ */

/************************************************************************/


#endif /* TIMER_H_ */
