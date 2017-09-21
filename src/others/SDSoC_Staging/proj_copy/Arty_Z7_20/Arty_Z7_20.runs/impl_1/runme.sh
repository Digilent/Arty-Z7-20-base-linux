#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/Xilinx/SDx/2017.1/SDK/bin:/opt/Xilinx/SDx/2017.1/Vivado/ids_lite/ISE/bin/lin64:/opt/Xilinx/SDx/2017.1/Vivado/bin
else
  PATH=/opt/Xilinx/SDx/2017.1/SDK/bin:/opt/Xilinx/SDx/2017.1/Vivado/ids_lite/ISE/bin/lin64:/opt/Xilinx/SDx/2017.1/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/opt/Xilinx/SDx/2017.1/Vivado/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/opt/Xilinx/SDx/2017.1/Vivado/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/digilent/sam_work/git/sbobrowicz/Arty-Z7-20-base/proj/Arty_Z7_20.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log Arty_Z7_20_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source Arty_Z7_20_wrapper.tcl -notrace


