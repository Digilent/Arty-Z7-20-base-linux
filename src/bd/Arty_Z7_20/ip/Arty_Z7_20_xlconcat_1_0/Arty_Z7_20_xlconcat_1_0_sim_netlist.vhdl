-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1881615 Tue May 16 18:38:00 MDT 2017
-- Date        : Tue Jun 20 16:33:18 2017
-- Host        : localhost.localdomain running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/digilent/sam_work/git/digilent/Arty-Z7-20-base/src/bd/Arty_Z7_20/ip/Arty_Z7_20_xlconcat_1_0/Arty_Z7_20_xlconcat_1_0_sim_netlist.vhdl
-- Design      : Arty_Z7_20_xlconcat_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Arty_Z7_20_xlconcat_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Arty_Z7_20_xlconcat_1_0 : entity is "Arty_Z7_20_xlconcat_1_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Arty_Z7_20_xlconcat_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Arty_Z7_20_xlconcat_1_0 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2017.1_sdx";
end Arty_Z7_20_xlconcat_1_0;

architecture STRUCTURE of Arty_Z7_20_xlconcat_1_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(0) <= In1(0);
  dout(1) <= \^in1\(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
