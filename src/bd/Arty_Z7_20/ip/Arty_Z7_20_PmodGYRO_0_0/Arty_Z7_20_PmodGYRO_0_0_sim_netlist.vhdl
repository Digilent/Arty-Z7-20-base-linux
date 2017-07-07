-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1881615 Tue May 16 18:38:00 MDT 2017
-- Date        : Fri Jul  7 16:06:53 2017
-- Host        : localhost.localdomain running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/digilent/sam_work/git/digilent/Arty-Z7-20-base/src/bd/Arty_Z7_20/ip/Arty_Z7_20_PmodGYRO_0_0/Arty_Z7_20_PmodGYRO_0_0_sim_netlist.vhdl
-- Design      : Arty_Z7_20_PmodGYRO_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_address_decoder is
  port (
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    AXI_LITE_GPIO_arready : out STD_LOGIC;
    AXI_LITE_GPIO_wready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Not_Dual.gpio_Data_Out_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\ : out STD_LOGIC;
    Read_Reg_Rst : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    is_read : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    is_write_reg : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bus2ip_addr_i_reg[8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_rnw_i_reg : in STD_LOGIC;
    rst_reg : in STD_LOGIC;
    gpio_xferAck_Reg : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    start2 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_address_decoder : entity is "address_decoder";
end Arty_Z7_20_PmodGYRO_0_0_address_decoder;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_address_decoder is
  signal \^axi_lite_gpio_arready\ : STD_LOGIC;
  signal \^axi_lite_gpio_wready\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].GPIO_DBus_i[31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Not_Dual.gpio_Data_Out[0]_i_2\ : label is "soft_lutpair0";
begin
  AXI_LITE_GPIO_arready <= \^axi_lite_gpio_arready\;
  AXI_LITE_GPIO_wready <= \^axi_lite_gpio_wready\;
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E0000"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => start2,
      I2 => \^axi_lite_gpio_wready\,
      I3 => \^axi_lite_gpio_arready\,
      I4 => s_axi_aresetn,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      R => '0'
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].GPIO_DBus_i[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => gpio_xferAck_Reg,
      I2 => bus2ip_rnw_i_reg,
      I3 => GPIO_xferAck_i,
      O => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].GPIO_DBus_i[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\
    );
\Not_Dual.gpio_Data_Out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => bus2ip_rnw_i_reg,
      I4 => \bus2ip_addr_i_reg[8]\(0),
      I5 => rst_reg,
      O => \Not_Dual.gpio_Data_Out_reg[0]\(0)
    );
\Not_Dual.gpio_Data_Out[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(3),
      O => D(3)
    );
\Not_Dual.gpio_Data_Out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(2),
      O => D(2)
    );
\Not_Dual.gpio_Data_Out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(1),
      O => D(1)
    );
\Not_Dual.gpio_Data_Out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(0),
      O => D(0)
    );
\Not_Dual.gpio_OE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I4 => \bus2ip_addr_i_reg[8]\(0),
      I5 => rst_reg,
      O => E(0)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => is_read,
      I5 => ip2bus_rdack_i_D1,
      O => \^axi_lite_gpio_arready\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => is_write_reg,
      I5 => ip2bus_wrack_i_D1,
      O => \^axi_lite_gpio_wready\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\ is
  port (
    p_9_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(3),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(2),
      I3 => \bus2ip_addr_i_reg[6]\(0),
      I4 => \bus2ip_addr_i_reg[6]\(4),
      I5 => Q,
      O => p_9_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\ is
  port (
    p_8_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(3),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => p_8_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\ is
  port (
    p_7_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(4),
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[6]\(2),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \bus2ip_addr_i_reg[6]\(0),
      O => p_7_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\ is
  port (
    p_6_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(2),
      I1 => \bus2ip_addr_i_reg[6]\(4),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[6]\(0),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \bus2ip_addr_i_reg[6]\(3),
      O => p_6_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\ is
  port (
    p_5_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(2),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[6]\(0),
      I5 => \bus2ip_addr_i_reg[6]\(3),
      O => p_5_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized15\ is
  port (
    p_4_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized15\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized15\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized15\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(2),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \bus2ip_addr_i_reg[6]\(4),
      I5 => Q,
      O => p_4_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized16\ is
  port (
    p_3_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized16\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized16\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized16\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(1),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[6]\(0),
      I5 => \bus2ip_addr_i_reg[6]\(3),
      O => p_3_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized17\ is
  port (
    p_2_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized17\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized17\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized17\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(1),
      I1 => \bus2ip_addr_i_reg[6]\(4),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[6]\(0),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => p_2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized18\ is
  port (
    p_1_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized18\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized18\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized18\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(0),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => p_1_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\ is
  port (
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(0),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(1),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[6]\(4),
      O => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_49\ is
  port (
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_49\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_49\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_49\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(0),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(1),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => Q,
      O => \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27\ is
  port (
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(2),
      I1 => \bus2ip_addr_i_reg[6]\(0),
      I2 => \bus2ip_addr_i_reg[6]\(3),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[6]\(4),
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27_50\ is
  port (
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27_50\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27_50\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27_50\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(2),
      I1 => \bus2ip_addr_i_reg[6]\(0),
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\ is
  port (
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(4),
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[6]\(2),
      I3 => \bus2ip_addr_i_reg[6]\(1),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => \bus2ip_addr_i_reg[6]\(0),
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\ is
  port (
    p_14_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(0),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => p_14_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\ is
  port (
    p_13_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(1),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => \bus2ip_addr_i_reg[6]\(0),
      O => p_13_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\ is
  port (
    p_12_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(3),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      I4 => \bus2ip_addr_i_reg[6]\(4),
      I5 => Q,
      O => p_12_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\ is
  port (
    p_11_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(2),
      I1 => \bus2ip_addr_i_reg[6]\(0),
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => p_11_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\ is
  port (
    p_10_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\ is
begin
CS: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(3),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(1),
      I4 => \bus2ip_addr_i_reg[6]\(4),
      I5 => Q,
      O => p_10_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_cdc_sync is
  port (
    scndry_vect_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_cdc_sync : entity is "cdc_sync";
end Arty_Z7_20_PmodGYRO_0_0_cdc_sync;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_cdc_sync is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_2 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_3 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d2_2 : STD_LOGIC;
  signal s_level_out_bus_d2_3 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  signal s_level_out_bus_d3_2 : STD_LOGIC;
  signal s_level_out_bus_d3_3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_2,
      Q => s_level_out_bus_d2_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_3,
      Q => s_level_out_bus_d2_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_2,
      Q => s_level_out_bus_d3_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_3,
      Q => s_level_out_bus_d3_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => scndry_vect_out(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => scndry_vect_out(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_2,
      Q => scndry_vect_out(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_3,
      Q => scndry_vect_out(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(2),
      Q => s_level_out_bus_d1_cdc_to_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(3),
      Q => s_level_out_bus_d1_cdc_to_3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0\ is
  port (
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    drr_Overrun_int_cdc_from_spi_d3 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6F66F6"
    )
        port map (
      I0 => drr_Overrun_int_cdc_from_spi_d3,
      I1 => \^scndry_out\,
      I2 => s_axi_wdata(0),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      I4 => p_1_in23_in,
      O => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_32\ is
  port (
    dtr_underrun_d1_reg : out STD_LOGIC;
    \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_32\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_32\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_32\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => dtr_underrun_d1_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_33\ is
  port (
    scndry_out : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_33\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_33\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_33\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_34\ is
  port (
    scndry_out : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_34\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_34\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_34\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_44\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[8]\ : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    spisel_d1_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_44\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_44\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_44\ is
  signal \^ip_irpt_enable_reg_reg[8]\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  \ip_irpt_enable_reg_reg[8]\ <= \^ip_irpt_enable_reg_reg[8]\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => spisel_d1_reg,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^ip_irpt_enable_reg_reg[8]\,
      R => '0'
    );
\ip_irpt_enable_reg[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^ip_irpt_enable_reg_reg[8]\,
      I2 => spicr_2_mst_n_slv_frm_axi_clk,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_47\ is
  port (
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC;
    \icount_out_reg[1]\ : out STD_LOGIC;
    spiXfer_done_to_axi_1 : out STD_LOGIC;
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\ : out STD_LOGIC;
    \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg\ : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0\ : in STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : in STD_LOGIC;
    Rx_FIFO_Full_int : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\ : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_sig : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_flag : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0\ : in STD_LOGIC;
    Tx_FIFO_Full_i : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_47\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_47\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_47\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF90"
    )
        port map (
      I0 => \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg\,
      I1 => \^scndry_out\,
      I2 => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0\,
      I3 => \RESET_FLOPS[15].RST_FLOPS\,
      I4 => bus2ip_reset_ipif_inverted,
      I5 => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      O => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E22E"
    )
        port map (
      I0 => Tx_FIFO_Full_i,
      I1 => Tx_FIFO_Full_int,
      I2 => \^scndry_out\,
      I3 => \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg\,
      I4 => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      I5 => reset2ip_reset_int,
      O => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.spiXfer_done_to_axi_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg\,
      I1 => \^scndry_out\,
      O => spiXfer_done_to_axi_1
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
\icount_out[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33F33337333733F3"
    )
        port map (
      I0 => Rx_FIFO_Full_int,
      I1 => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\,
      I2 => empty_fwft_i_reg,
      I3 => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\,
      I4 => \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg\,
      I5 => \^scndry_out\,
      O => \icount_out_reg[3]\
    );
\icount_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022000000002022"
    )
        port map (
      I0 => empty_fwft_i_reg,
      I1 => Rx_FIFO_Full_Fifo_d1_sig,
      I2 => Rx_FIFO_Full_Fifo_d1_flag,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0\,
      I4 => \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg\,
      I5 => \^scndry_out\,
      O => \icount_out_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_48\ is
  port (
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    Tx_FIFO_Empty_intr : out STD_LOGIC;
    tx_occ_msb : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\ : out STD_LOGIC;
    tx_occ_msb_4 : in STD_LOGIC;
    tx_FIFO_Occpncy_MSB_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC;
    p_1_in20_in : in STD_LOGIC;
    tx_fifo_count_d2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    spiXfer_done_to_axi_d1 : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    tx_fifo_count : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_fwft_i_reg : in STD_LOGIC;
    rx_fifo_count : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_48\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_48\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_48\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD0FFD0D0FFD0"
    )
        port map (
      I0 => tx_occ_msb_4,
      I1 => \^scndry_out\,
      I2 => tx_FIFO_Occpncy_MSB_d1,
      I3 => s_axi_wdata(0),
      I4 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      I5 => p_1_in20_in,
      O => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => p_3_in,
      I2 => Bus_RNW_reg,
      I3 => tx_fifo_count(2),
      I4 => empty_fwft_i_reg,
      I5 => rx_fifo_count(1),
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => p_3_in,
      I2 => Bus_RNW_reg,
      I3 => tx_fifo_count(1),
      I4 => empty_fwft_i_reg,
      I5 => rx_fifo_count(0),
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => p_3_in,
      I2 => Bus_RNW_reg,
      I3 => tx_fifo_count(0),
      I4 => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      I5 => Q(0),
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\
    );
tx_FIFO_Empty_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => tx_fifo_count_d2(0),
      I1 => tx_fifo_count_d2(1),
      I2 => tx_fifo_count_d2(2),
      I3 => tx_fifo_count_d2(3),
      I4 => spiXfer_done_to_axi_d1,
      I5 => \^scndry_out\,
      O => Tx_FIFO_Empty_intr
    );
tx_FIFO_Occpncy_MSB_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_occ_msb_4,
      I1 => \^scndry_out\,
      O => tx_occ_msb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1\ is
  port (
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    SPIXfer_done_int_d1_reg : in STD_LOGIC;
    \goreg_dm.dout_i_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    stop_clock_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\ : in STD_LOGIC;
    serial_dout_int : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2\ : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1\ is
  signal \^other_ratio_generate.rx_shft_reg_s_reg[7]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
  \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\(0) <= \^other_ratio_generate.rx_shft_reg_s_reg[7]\(0);
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => \^scndry_out\,
      R => '0'
    );
\OTHER_RATIO_GENERATE.Shift_Reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^other_ratio_generate.rx_shft_reg_s_reg[7]\(0),
      I1 => SPIXfer_done_int_d1_reg,
      I2 => \goreg_dm.dout_i_reg[7]\(1),
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\,
      I4 => \goreg_dm.dout_i_reg[7]\(0),
      O => \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\(0)
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => serial_dout_int,
      I1 => \^scndry_out\,
      I2 => io1_i_sync,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2\,
      I4 => io0_i_sync,
      O => \^other_ratio_generate.rx_shft_reg_s_reg[7]\(0)
    );
\SS_O[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFE0"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => \out\,
      I2 => spiXfer_done_int,
      I3 => stop_clock_reg,
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\,
      O => \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_35\ is
  port (
    Slave_MODF_strobe0 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    Allow_Slave_MODF_Strobe : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_35\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_35\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_35\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => \^scndry_out\,
      R => '0'
    );
Slave_MODF_strobe_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Allow_Slave_MODF_Strobe,
      I1 => \^scndry_out\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\,
      O => Slave_MODF_strobe0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_36\ is
  port (
    Allow_Slave_MODF_Strobe_reg : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    transfer_start_reg : out STD_LOGIC;
    R : out STD_LOGIC;
    MODF_strobe0 : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ : in STD_LOGIC;
    Allow_Slave_MODF_Strobe : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\ : in STD_LOGIC;
    Allow_MODF_Strobe : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2\ : in STD_LOGIC;
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_36\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_36\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_36\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  signal transfer_start_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Allow_Slave_MODF_Strobe_i_1 : label is "soft_lutpair23";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of MODF_strobe_i_1 : label is "soft_lutpair23";
begin
  scndry_out <= \^scndry_out\;
Allow_Slave_MODF_Strobe_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\,
      I2 => Allow_Slave_MODF_Strobe,
      O => Allow_Slave_MODF_Strobe_reg
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_2_mst_n_slv_frm_axi_clk,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => \^scndry_out\,
      R => '0'
    );
MODF_strobe_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => Allow_MODF_Strobe,
      O => MODF_strobe0
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^scndry_out\,
      O => R
    );
transfer_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0202AA02"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\,
      I1 => Rst_to_spi,
      I2 => \^scndry_out\,
      I3 => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\,
      I4 => transfer_start_i_2_n_0,
      O => transfer_start_reg
    );
transfer_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFDFFFD"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => Rst_to_spi,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2\,
      I4 => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg\,
      I5 => \out\,
      O => transfer_start_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_37\ is
  port (
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ : out STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_37\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_37\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_37\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_38\ is
  port (
    \OTHER_RATIO_GENERATE.sck_o_int_reg\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.sck_o_int_reg_0\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_38\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_38\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_38\ is
  signal \^other_ratio_generate.sck_o_int_reg_0\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
  \OTHER_RATIO_GENERATE.sck_o_int_reg_0\ <= \^other_ratio_generate.sck_o_int_reg_0\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => \^other_ratio_generate.sck_o_int_reg_0\,
      R => '0'
    );
\OTHER_RATIO_GENERATE.sck_o_int_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^other_ratio_generate.sck_o_int_reg_0\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\,
      O => \OTHER_RATIO_GENERATE.sck_o_int_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_39\ is
  port (
    scndry_out : out STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_39\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_39\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_39\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_40\ is
  port (
    scndry_out : out STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_40\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_40\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_40\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_41\ is
  port (
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\ : out STD_LOGIC;
    \SPICR_data_int_reg[0]\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_41\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_41\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_41\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \SPICR_data_int_reg[0]\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_42\ is
  port (
    D_0 : out STD_LOGIC;
    SPI_TRISTATE_CONTROL_V : out STD_LOGIC;
    scndry_out : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ : in STD_LOGIC;
    modf_strobe_int : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\ : in STD_LOGIC;
    SPISEL_sync : in STD_LOGIC;
    spicr_bits_7_8_frm_axi_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_42\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_42\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_42\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal spicr_bits_7_8_to_spi_clk : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_bits_7_8_frm_axi_clk(0),
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => spicr_bits_7_8_to_spi_clk(1),
      R => '0'
    );
SPI_TRISTATE_CONTROL_III_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => spicr_bits_7_8_to_spi_clk(1),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\,
      I2 => modf_strobe_int,
      I3 => scndry_out,
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\,
      O => D_0
    );
SPI_TRISTATE_CONTROL_V_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => spicr_bits_7_8_to_spi_clk(1),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\,
      I2 => scndry_out,
      I3 => SPISEL_sync,
      O => SPI_TRISTATE_CONTROL_V
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_43\ is
  port (
    scndry_out : out STD_LOGIC;
    spicr_bits_7_8_frm_axi_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_43\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_43\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_43\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_bits_7_8_frm_axi_clk(0),
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_45\ is
  port (
    \SS_O_reg[0]\ : out STD_LOGIC;
    \SS_O_reg[0]_0\ : out STD_LOGIC;
    \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\ : in STD_LOGIC;
    transfer_start_d1 : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_45\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_45\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_45\ is
  signal \^ss_o_reg[0]_0\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
  \SS_O_reg[0]_0\ <= \^ss_o_reg[0]_0\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => \^ss_o_reg[0]_0\,
      R => '0'
    );
\SS_O[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAABF"
    )
        port map (
      I0 => \^ss_o_reg[0]_0\,
      I1 => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\,
      I2 => transfer_start_d1,
      I3 => scndry_out,
      I4 => Rst_to_spi,
      O => \SS_O_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_46\ is
  port (
    scndry_out : out STD_LOGIC;
    modf_reg : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_46\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_46\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_46\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => modf_reg,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized2\ is
  port (
    SPICR_RX_FIFO_Rst_en_d2 : out STD_LOGIC;
    SPICR_RX_FIFO_Rst_en_d1 : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized2\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized2\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized2\ is
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_RX_FIFO_Rst_en_d1,
      Q => SPICR_RX_FIFO_Rst_en_d2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3\ is
  port (
    scndry_out : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3_0\ is
  port (
    Rx_FIFO_Full_Fifo_d1_synced_i : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC;
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_sig : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_flag : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3_0\ : entity is "cdc_sync";
end \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3_0\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3_0\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \icount_out[3]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of rc_FIFO_Full_d1_i_1 : label is "soft_lutpair24";
begin
  scndry_out <= \^scndry_out\;
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABABA0A"
    )
        port map (
      I0 => Rx_FIFO_Full_Fifo_d1_sig,
      I1 => Rx_FIFO_Full_Fifo_d1_flag,
      I2 => \^scndry_out\,
      I3 => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      I4 => \out\,
      I5 => reset2ip_reset_int,
      O => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^scndry_out\,
      R => '0'
    );
\icount_out[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Rx_FIFO_Full_Fifo_d1_sig,
      I1 => Rx_FIFO_Full_Fifo_d1_flag,
      I2 => \^scndry_out\,
      O => \icount_out_reg[3]\
    );
rc_FIFO_Full_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => \out\,
      O => Rx_FIFO_Full_Fifo_d1_synced_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_counter_f is
  port (
    rx_fifo_count : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \icount_out_reg[0]_0\ : out STD_LOGIC;
    \icount_out_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_i_reg\ : out STD_LOGIC;
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\ : in STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    spiXfer_done_d3 : in STD_LOGIC;
    Rx_FIFO_Full_i : in STD_LOGIC;
    Rx_FIFO_Full_int : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_counter_f : entity is "counter_f";
end Arty_Z7_20_PmodGYRO_0_0_counter_f;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_counter_f is
  signal RX_one_less_than_full : STD_LOGIC;
  signal \icount_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^icount_out_reg[0]_0\ : STD_LOGIC;
  signal \^icount_out_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rx_fifo_count\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  \icount_out_reg[0]_0\ <= \^icount_out_reg[0]_0\;
  \icount_out_reg[3]_0\(0) <= \^icount_out_reg[3]_0\(0);
  rx_fifo_count(1 downto 0) <= \^rx_fifo_count\(1 downto 0);
\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000E"
    )
        port map (
      I0 => Rx_FIFO_Full_i,
      I1 => RX_one_less_than_full,
      I2 => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      I3 => bus2ip_reset_ipif_inverted,
      I4 => \RESET_FLOPS[15].RST_FLOPS\,
      I5 => Rx_FIFO_Full_int,
      O => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_i_reg\
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000600000000000"
    )
        port map (
      I0 => scndry_out,
      I1 => spiXfer_done_d3,
      I2 => \^icount_out_reg[3]_0\(0),
      I3 => \^rx_fifo_count\(1),
      I4 => \^icount_out_reg[0]_0\,
      I5 => \^rx_fifo_count\(0),
      O => RX_one_less_than_full
    );
\icount_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^icount_out_reg[0]_0\,
      I1 => \RESET_FLOPS[15].RST_FLOPS\,
      I2 => bus2ip_reset_ipif_inverted,
      I3 => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      O => \icount_out[0]_i_1_n_0\
    );
\icount_out[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF96"
    )
        port map (
      I0 => \^rx_fifo_count\(0),
      I1 => \^icount_out_reg[0]_0\,
      I2 => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\,
      I3 => \RESET_FLOPS[15].RST_FLOPS\,
      I4 => bus2ip_reset_ipif_inverted,
      I5 => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      O => \icount_out[1]_i_1__0_n_0\
    );
\icount_out[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFFEFEFEFEEFFE"
    )
        port map (
      I0 => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      I1 => reset2ip_reset_int,
      I2 => \^rx_fifo_count\(1),
      I3 => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\,
      I4 => \^rx_fifo_count\(0),
      I5 => \^icount_out_reg[0]_0\,
      O => \icount_out[2]_i_1__0_n_0\
    );
\icount_out[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFF77555555D"
    )
        port map (
      I0 => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\,
      I1 => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\,
      I2 => \^rx_fifo_count\(0),
      I3 => \^icount_out_reg[0]_0\,
      I4 => \^rx_fifo_count\(1),
      I5 => \^icount_out_reg[3]_0\(0),
      O => \icount_out[3]_i_2__0_n_0\
    );
\icount_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\,
      D => \icount_out[0]_i_1_n_0\,
      Q => \^icount_out_reg[0]_0\,
      R => '0'
    );
\icount_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\,
      D => \icount_out[1]_i_1__0_n_0\,
      Q => \^rx_fifo_count\(0),
      R => '0'
    );
\icount_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\,
      D => \icount_out[2]_i_1__0_n_0\,
      Q => \^rx_fifo_count\(1),
      R => '0'
    );
\icount_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\,
      D => \icount_out[3]_i_2__0_n_0\,
      Q => \^icount_out_reg[3]_0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_counter_f_1 is
  port (
    tx_fifo_count : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[3]\ : out STD_LOGIC;
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg\ : out STD_LOGIC;
    reset_TxFIFO_ptr_int : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    spiXfer_done_d3 : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS\ : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    Tx_FIFO_Full_i : in STD_LOGIC;
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_counter_f_1 : entity is "counter_f";
end Arty_Z7_20_PmodGYRO_0_0_counter_f_1;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_counter_f_1 is
  signal \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_2_n_0\ : STD_LOGIC;
  signal \^fifo_exists.tx_full_emp_intr_md_0_gen.tx_fifo_count_d1_reg[3]\ : STD_LOGIC;
  signal \icount_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \icount_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \^tx_fifo_count\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[3]\ <= \^fifo_exists.tx_full_emp_intr_md_0_gen.tx_fifo_count_d1_reg[3]\;
  tx_fifo_count(2 downto 0) <= \^tx_fifo_count\(2 downto 0);
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_2_n_0\,
      I1 => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      I2 => bus2ip_reset_ipif_inverted,
      I3 => \RESET_FLOPS[15].RST_FLOPS\,
      I4 => Tx_FIFO_Full_int,
      O => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg\
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => \^tx_fifo_count\(1),
      I1 => \^tx_fifo_count\(0),
      I2 => \^tx_fifo_count\(2),
      I3 => \^fifo_exists.tx_full_emp_intr_md_0_gen.tx_fifo_count_d1_reg[3]\,
      I4 => Bus_RNW_reg_reg,
      I5 => Tx_FIFO_Full_i,
      O => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_2_n_0\
    );
\icount_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEBEBEBEBEEBEBBE"
    )
        port map (
      I0 => reset_TxFIFO_ptr_int,
      I1 => \^tx_fifo_count\(1),
      I2 => \^tx_fifo_count\(0),
      I3 => scndry_out,
      I4 => spiXfer_done_d3,
      I5 => Bus_RNW_reg_reg,
      O => \icount_out[1]_i_1_n_0\
    );
\icount_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF69"
    )
        port map (
      I0 => \^tx_fifo_count\(2),
      I1 => \^tx_fifo_count\(1),
      I2 => \icount_out[3]_i_3_n_0\,
      I3 => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      I4 => bus2ip_reset_ipif_inverted,
      I5 => \RESET_FLOPS[15].RST_FLOPS\,
      O => \icount_out[2]_i_1_n_0\
    );
\icount_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7E81"
    )
        port map (
      I0 => \^tx_fifo_count\(1),
      I1 => \icount_out[3]_i_3_n_0\,
      I2 => \^tx_fifo_count\(2),
      I3 => \^fifo_exists.tx_full_emp_intr_md_0_gen.tx_fifo_count_d1_reg[3]\,
      I4 => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      I5 => reset2ip_reset_int,
      O => \icount_out[3]_i_2_n_0\
    );
\icount_out[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBB22B"
    )
        port map (
      I0 => \^tx_fifo_count\(0),
      I1 => \^tx_fifo_count\(1),
      I2 => scndry_out,
      I3 => spiXfer_done_d3,
      I4 => Bus_RNW_reg_reg,
      O => \icount_out[3]_i_3_n_0\
    );
\icount_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus_RNW_reg_reg_0,
      D => \RESET_FLOPS[15].RST_FLOPS_0\,
      Q => \^tx_fifo_count\(0),
      R => '0'
    );
\icount_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus_RNW_reg_reg_0,
      D => \icount_out[1]_i_1_n_0\,
      Q => \^tx_fifo_count\(1),
      R => '0'
    );
\icount_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus_RNW_reg_reg_0,
      D => \icount_out[2]_i_1_n_0\,
      Q => \^tx_fifo_count\(2),
      R => '0'
    );
\icount_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus_RNW_reg_reg_0,
      D => \icount_out[3]_i_2_n_0\,
      Q => \^fifo_exists.tx_full_emp_intr_md_0_gen.tx_fifo_count_d1_reg[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in35_in : out STD_LOGIC;
    p_1_in32_in : out STD_LOGIC;
    p_1_in29_in : out STD_LOGIC;
    p_1_in26_in : out STD_LOGIC;
    p_1_in23_in : out STD_LOGIC;
    p_1_in20_in : out STD_LOGIC;
    p_1_in17_in : out STD_LOGIC;
    p_1_in14_in : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    IP2Bus_WrAck_1 : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    IP2Bus_RdAck_1 : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg\ : in STD_LOGIC;
    \LOGIC_GENERATION_CDC.slave_MODF_strobe_cdc_from_spi_d3_reg\ : in STD_LOGIC;
    tx_FIFO_Empty_d1_reg : in STD_LOGIC;
    dtr_underrun_d1_reg : in STD_LOGIC;
    rc_FIFO_Full_d1_reg : in STD_LOGIC;
    \LOGIC_GENERATION_CDC.drr_Overrun_int_cdc_from_spi_d3_reg\ : in STD_LOGIC;
    \FIFO_EXISTS.tx_occ_msb_4_reg\ : in STD_LOGIC;
    \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_3\ : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\ : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole : in STD_LOGIC;
    ip2Bus_WrAck_core_reg : in STD_LOGIC;
    wrack : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_interrupt_control : entity is "interrupt_control";
end Arty_Z7_20_PmodGYRO_0_0_interrupt_control;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_interrupt_control is
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ip2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_2_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_3_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_4_n_0 : STD_LOGIC;
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^p_1_in14_in\ : STD_LOGIC;
  signal \^p_1_in17_in\ : STD_LOGIC;
  signal \^p_1_in20_in\ : STD_LOGIC;
  signal \^p_1_in23_in\ : STD_LOGIC;
  signal \^p_1_in26_in\ : STD_LOGIC;
  signal \^p_1_in29_in\ : STD_LOGIC;
  signal \^p_1_in32_in\ : STD_LOGIC;
  signal \^p_1_in35_in\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]\(8 downto 0) <= \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(8 downto 0);
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_1_in14_in <= \^p_1_in14_in\;
  p_1_in17_in <= \^p_1_in17_in\;
  p_1_in20_in <= \^p_1_in20_in\;
  p_1_in23_in <= \^p_1_in23_in\;
  p_1_in26_in <= \^p_1_in26_in\;
  p_1_in29_in <= \^p_1_in29_in\;
  p_1_in32_in <= \^p_1_in32_in\;
  p_1_in35_in <= \^p_1_in35_in\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_CDC.slave_MODF_strobe_cdc_from_spi_d3_reg\,
      Q => \^p_1_in35_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_FIFO_Empty_d1_reg,
      Q => \^p_1_in32_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtr_underrun_d1_reg,
      Q => \^p_1_in29_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rc_FIFO_Full_d1_reg,
      Q => \^p_1_in26_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_CDC.drr_Overrun_int_cdc_from_spi_d3_reg\,
      Q => \^p_1_in23_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.tx_occ_msb_4_reg\,
      Q => \^p_1_in20_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_3\,
      Q => \^p_1_in17_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      Q => \^p_1_in14_in\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ip2Bus_RdAck_intr_reg_hole,
      I1 => p_0_in,
      I2 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      O => IP2Bus_RdAck_1
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I1 => p_2_in,
      I2 => ip2Bus_WrAck_intr_reg_hole,
      I3 => ip2Bus_WrAck_core_reg,
      I4 => wrack,
      O => IP2Bus_WrAck_1
    );
intr2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr2bus_rdack0,
      Q => p_0_in,
      R => reset2ip_reset_int
    );
intr2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => interrupt_wrce_strb,
      Q => p_2_in,
      R => reset2ip_reset_int
    );
ip2intc_irpt_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg\,
      I1 => ip2intc_irpt_INST_0_i_1_n_0,
      I2 => ip2intc_irpt_INST_0_i_2_n_0,
      I3 => ip2intc_irpt_INST_0_i_3_n_0,
      I4 => ip2intc_irpt_INST_0_i_4_n_0,
      O => ip2intc_irpt
    );
ip2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(3),
      I1 => \^p_1_in29_in\,
      I2 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(7),
      I3 => \^p_1_in17_in\,
      O => ip2intc_irpt_INST_0_i_1_n_0
    );
ip2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(4),
      I1 => \^p_1_in26_in\,
      I2 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(1),
      I3 => \^p_1_in35_in\,
      O => ip2intc_irpt_INST_0_i_2_n_0
    );
ip2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(8),
      I1 => \^p_1_in14_in\,
      I2 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(0),
      I3 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      O => ip2intc_irpt_INST_0_i_3_n_0
    );
ip2intc_irpt_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(2),
      I1 => \^p_1_in32_in\,
      I2 => \^p_1_in20_in\,
      I3 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(6),
      I4 => \^p_1_in23_in\,
      I5 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(5),
      O => ip2intc_irpt_INST_0_i_4_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(0),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(1),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(2),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(3),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(4),
      Q => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(4),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(5),
      Q => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(5),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(6),
      Q => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(6),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(7),
      Q => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(7),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(8),
      Q => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[23]\(8),
      R => reset2ip_reset_int
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => reset2ip_reset_int
    );
irpt_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_rdack,
      Q => irpt_rdack_d1,
      R => reset2ip_reset_int
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_pmod_concat is
  port (
    in_top_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_uart_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_uart_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_uart_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_i2c_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_i2c_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_i2c_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_uart_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_uart_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_uart_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_i2c_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_i2c_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_i2c_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in0_I : out STD_LOGIC;
    in1_I : out STD_LOGIC;
    in2_I : out STD_LOGIC;
    in3_I : out STD_LOGIC;
    in4_I : out STD_LOGIC;
    in5_I : out STD_LOGIC;
    in6_I : out STD_LOGIC;
    in7_I : out STD_LOGIC;
    in0_O : in STD_LOGIC;
    in1_O : in STD_LOGIC;
    in2_O : in STD_LOGIC;
    in3_O : in STD_LOGIC;
    in4_O : in STD_LOGIC;
    in5_O : in STD_LOGIC;
    in6_O : in STD_LOGIC;
    in7_O : in STD_LOGIC;
    in0_T : in STD_LOGIC;
    in1_T : in STD_LOGIC;
    in2_T : in STD_LOGIC;
    in3_T : in STD_LOGIC;
    in4_T : in STD_LOGIC;
    in5_T : in STD_LOGIC;
    in6_T : in STD_LOGIC;
    in7_T : in STD_LOGIC;
    out0_I : in STD_LOGIC;
    out1_I : in STD_LOGIC;
    out2_I : in STD_LOGIC;
    out3_I : in STD_LOGIC;
    out4_I : in STD_LOGIC;
    out5_I : in STD_LOGIC;
    out6_I : in STD_LOGIC;
    out7_I : in STD_LOGIC;
    out0_O : out STD_LOGIC;
    out1_O : out STD_LOGIC;
    out2_O : out STD_LOGIC;
    out3_O : out STD_LOGIC;
    out4_O : out STD_LOGIC;
    out5_O : out STD_LOGIC;
    out6_O : out STD_LOGIC;
    out7_O : out STD_LOGIC;
    out0_T : out STD_LOGIC;
    out1_T : out STD_LOGIC;
    out2_T : out STD_LOGIC;
    out3_T : out STD_LOGIC;
    out4_T : out STD_LOGIC;
    out5_T : out STD_LOGIC;
    out6_T : out STD_LOGIC;
    out7_T : out STD_LOGIC
  );
  attribute Bottom_Row_Interface : string;
  attribute Bottom_Row_Interface of Arty_Z7_20_PmodGYRO_0_0_pmod_concat : entity is "GPIO";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_pmod_concat : entity is "pmod_concat";
  attribute Top_Row_Interface : string;
  attribute Top_Row_Interface of Arty_Z7_20_PmodGYRO_0_0_pmod_concat : entity is "SPI";
end Arty_Z7_20_PmodGYRO_0_0_pmod_concat;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_pmod_concat is
  signal \<const0>\ : STD_LOGIC;
  signal \^in0_o\ : STD_LOGIC;
  signal \^in0_t\ : STD_LOGIC;
  signal \^in1_o\ : STD_LOGIC;
  signal \^in1_t\ : STD_LOGIC;
  signal \^in2_o\ : STD_LOGIC;
  signal \^in2_t\ : STD_LOGIC;
  signal \^in3_o\ : STD_LOGIC;
  signal \^in3_t\ : STD_LOGIC;
  signal \^in_bottom_bus_o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^in_bottom_bus_t\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out0_i\ : STD_LOGIC;
  signal \^out1_i\ : STD_LOGIC;
  signal \^out2_i\ : STD_LOGIC;
  signal \^out3_i\ : STD_LOGIC;
  signal \^out4_i\ : STD_LOGIC;
  signal \^out5_i\ : STD_LOGIC;
  signal \^out6_i\ : STD_LOGIC;
  signal \^out7_i\ : STD_LOGIC;
begin
  \^in0_o\ <= in0_O;
  \^in0_t\ <= in0_T;
  \^in1_o\ <= in1_O;
  \^in1_t\ <= in1_T;
  \^in2_o\ <= in2_O;
  \^in2_t\ <= in2_T;
  \^in3_o\ <= in3_O;
  \^in3_t\ <= in3_T;
  \^in_bottom_bus_o\(3 downto 0) <= in_bottom_bus_O(3 downto 0);
  \^in_bottom_bus_t\(3 downto 0) <= in_bottom_bus_T(3 downto 0);
  \^out0_i\ <= out0_I;
  \^out1_i\ <= out1_I;
  \^out2_i\ <= out2_I;
  \^out3_i\ <= out3_I;
  \^out4_i\ <= out4_I;
  \^out5_i\ <= out5_I;
  \^out6_i\ <= out6_I;
  \^out7_i\ <= out7_I;
  in0_I <= \^out0_i\;
  in1_I <= \^out1_i\;
  in2_I <= \^out2_i\;
  in3_I <= \^out3_i\;
  in4_I <= \<const0>\;
  in5_I <= \<const0>\;
  in6_I <= \<const0>\;
  in7_I <= \<const0>\;
  in_bottom_bus_I(3) <= \^out7_i\;
  in_bottom_bus_I(2) <= \^out6_i\;
  in_bottom_bus_I(1) <= \^out5_i\;
  in_bottom_bus_I(0) <= \^out4_i\;
  in_bottom_i2c_gpio_bus_I(1) <= \<const0>\;
  in_bottom_i2c_gpio_bus_I(0) <= \<const0>\;
  in_bottom_uart_gpio_bus_I(1) <= \<const0>\;
  in_bottom_uart_gpio_bus_I(0) <= \<const0>\;
  in_top_bus_I(3) <= \<const0>\;
  in_top_bus_I(2) <= \<const0>\;
  in_top_bus_I(1) <= \<const0>\;
  in_top_bus_I(0) <= \<const0>\;
  in_top_i2c_gpio_bus_I(1) <= \<const0>\;
  in_top_i2c_gpio_bus_I(0) <= \<const0>\;
  in_top_uart_gpio_bus_I(1) <= \<const0>\;
  in_top_uart_gpio_bus_I(0) <= \<const0>\;
  out0_O <= \^in0_o\;
  out0_T <= \^in0_t\;
  out1_O <= \^in1_o\;
  out1_T <= \^in1_t\;
  out2_O <= \^in2_o\;
  out2_T <= \^in2_t\;
  out3_O <= \^in3_o\;
  out3_T <= \^in3_t\;
  out4_O <= \^in_bottom_bus_o\(0);
  out4_T <= \^in_bottom_bus_t\(0);
  out5_O <= \^in_bottom_bus_o\(1);
  out5_T <= \^in_bottom_bus_t\(1);
  out6_O <= \^in_bottom_bus_o\(2);
  out6_T <= \^in_bottom_bus_t\(2);
  out7_O <= \^in_bottom_bus_o\(3);
  out7_T <= \^in_bottom_bus_t\(3);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_qspi_cntrl_reg is
  port (
    spicr_bits_7_8_frm_axi_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    prmry_in : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC;
    reset_TxFIFO_ptr_int : out STD_LOGIC;
    \icount_out_reg[3]_0\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\ : out STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\ : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    bus2ip_wrce_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    SPICR_data_int_reg0 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg\ : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    spiXfer_done_to_axi_1 : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS\ : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    data_Exists_RcFIFO_int_d1 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    Rx_FIFO_Full_i : in STD_LOGIC;
    Rx_FIFO_Full_int : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    p_8_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_qspi_cntrl_reg : entity is "qspi_cntrl_reg";
end Arty_Z7_20_PmodGYRO_0_0_qspi_cntrl_reg;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_qspi_cntrl_reg is
  signal \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \^control_reg_3_4_generate[3].spicr_data_int_reg[3]_0\ : STD_LOGIC;
  signal \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : STD_LOGIC;
  signal \^reset_txfifo_ptr_int\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I\ : label is "PRIMITIVE";
  attribute box_type of \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \icount_out[3]_i_3__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ngwrdrst.grst.g7serrst.rst_wr_reg1_i_1\ : label is "soft_lutpair22";
begin
  \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ <= \^control_reg_3_4_generate[3].spicr_data_int_reg[3]_0\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_0\;
  \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ <= \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\;
  reset_TxFIFO_ptr_int <= \^reset_txfifo_ptr_int\;
\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(8),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4\,
      S => reset2ip_reset_int
    );
\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(7),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3\,
      S => reset2ip_reset_int
    );
\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \^control_reg_3_4_generate[3].spicr_data_int_reg[3]_0\,
      I1 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg\,
      I2 => s_axi_wdata(6),
      I3 => p_8_in,
      I4 => Bus_RNW_reg,
      I5 => reset2ip_reset_int,
      O => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1_n_0\
    );
\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1_n_0\,
      Q => \^control_reg_3_4_generate[3].spicr_data_int_reg[3]_0\,
      R => '0'
    );
\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\,
      I1 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg\,
      I2 => s_axi_wdata(5),
      I3 => p_8_in,
      I4 => Bus_RNW_reg,
      I5 => reset2ip_reset_int,
      O => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1_n_0\
    );
\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1_n_0\,
      Q => \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\,
      R => '0'
    );
\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(4),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(3),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(2),
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_0\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(1),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(0),
      Q => prmry_in,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0302030203020002"
    )
        port map (
      I0 => Rx_FIFO_Full_i,
      I1 => \^control_reg_3_4_generate[3].spicr_data_int_reg[3]_0\,
      I2 => reset2ip_reset_int,
      I3 => Rx_FIFO_Full_int,
      I4 => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      I5 => empty_fwft_i_reg,
      O => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1FF01010F01"
    )
        port map (
      I0 => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      I1 => data_Exists_RcFIFO_int_d1,
      I2 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\,
      I3 => s_axi_wdata(8),
      I4 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      I5 => p_1_in14_in,
      O => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_0\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      O => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\
    );
\SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(2),
      Q => spicr_bits_7_8_frm_axi_clk(1),
      R => reset2ip_reset_int
    );
\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(1),
      Q => spicr_bits_7_8_frm_axi_clk(0),
      R => reset2ip_reset_int
    );
\SPICR_data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(9),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5\,
      R => reset2ip_reset_int
    );
\icount_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFAAAABAAA"
    )
        port map (
      I0 => \^reset_txfifo_ptr_int\,
      I1 => Bus_RNW_reg,
      I2 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg\,
      I3 => p_6_in,
      I4 => ram_full_i_reg,
      I5 => spiXfer_done_to_axi_1,
      O => \icount_out_reg[3]\
    );
\icount_out[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^control_reg_3_4_generate[3].spicr_data_int_reg[3]_0\,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \RESET_FLOPS[15].RST_FLOPS\,
      O => \icount_out_reg[3]_0\
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \RESET_FLOPS[15].RST_FLOPS\,
      O => \^reset_txfifo_ptr_int\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_qspi_fifo_ifmodule is
  port (
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg\ : out STD_LOGIC;
    p_4_in : out STD_LOGIC;
    tx_FIFO_Occpncy_MSB_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_synced_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Tx_FIFO_Empty_intr : in STD_LOGIC;
    Receive_ip2bus_error0 : in STD_LOGIC;
    Transmit_ip2bus_error0 : in STD_LOGIC;
    tx_occ_msb : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC;
    p_1_in26_in : in STD_LOGIC;
    p_1_in29_in : in STD_LOGIC;
    p_1_in32_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_qspi_fifo_ifmodule : entity is "qspi_fifo_ifmodule";
end Arty_Z7_20_PmodGYRO_0_0_qspi_fifo_ifmodule;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_qspi_fifo_ifmodule is
  signal dtr_underrun_d1 : STD_LOGIC;
  signal rc_FIFO_Full_d1 : STD_LOGIC;
  signal tx_FIFO_Empty_d1 : STD_LOGIC;
begin
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F44F4"
    )
        port map (
      I0 => tx_FIFO_Empty_d1,
      I1 => Tx_FIFO_Empty_intr,
      I2 => s_axi_wdata(0),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      I4 => p_1_in32_in,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F44F4"
    )
        port map (
      I0 => dtr_underrun_d1,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I2 => s_axi_wdata(1),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      I4 => p_1_in29_in,
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF04FF0404FF04"
    )
        port map (
      I0 => rc_FIFO_Full_d1,
      I1 => scndry_out,
      I2 => prmry_in,
      I3 => s_axi_wdata(2),
      I4 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      I5 => p_1_in26_in,
      O => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\
    );
Receive_ip2bus_error_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Receive_ip2bus_error0,
      Q => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg\,
      R => reset2ip_reset_int
    );
Transmit_ip2bus_error_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Transmit_ip2bus_error0,
      Q => p_4_in,
      R => reset2ip_reset_int
    );
dtr_underrun_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      Q => dtr_underrun_d1,
      R => reset2ip_reset_int
    );
rc_FIFO_Full_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rx_FIFO_Full_Fifo_d1_synced_i,
      Q => rc_FIFO_Full_d1,
      R => reset2ip_reset_int
    );
tx_FIFO_Empty_d1_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_FIFO_Empty_intr,
      Q => tx_FIFO_Empty_d1,
      S => reset2ip_reset_int
    );
tx_FIFO_Occpncy_MSB_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_occ_msb,
      Q => tx_FIFO_Occpncy_MSB_d1,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_qspi_mode_0_module is
  port (
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    SPISEL_sync : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    modf_strobe_int : out STD_LOGIC;
    spisel_d1_reg : out STD_LOGIC;
    SPIXfer_done_int_d1_reg_0 : out STD_LOGIC;
    spiXfer_done_int : out STD_LOGIC;
    stop_clock_reg : out STD_LOGIC;
    transfer_start_d1 : out STD_LOGIC;
    transfer_start_d1_reg_0 : out STD_LOGIC;
    drr_Overrun_int : out STD_LOGIC;
    Allow_Slave_MODF_Strobe : out STD_LOGIC;
    Allow_MODF_Strobe : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    serial_dout_int : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg\ : out STD_LOGIC;
    p_3_out : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.Serial_Dout_reg_0\ : out STD_LOGIC;
    empty_fwft_fb_o_i_reg : out STD_LOGIC;
    \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D_0 : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : in STD_LOGIC;
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    R : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    Slave_MODF_strobe0 : in STD_LOGIC;
    MODF_strobe0 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2\ : in STD_LOGIC;
    \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg_0\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\ : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    \goreg_dm.dout_i_reg[0]\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5\ : in STD_LOGIC;
    RESET_SYNC_AX2S_2 : in STD_LOGIC;
    p_6_out : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10\ : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_11\ : in STD_LOGIC;
    RESET_SYNC_AX2S_2_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_qspi_mode_0_module : entity is "qspi_mode_0_module";
end Arty_Z7_20_PmodGYRO_0_0_qspi_mode_0_module;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_qspi_mode_0_module is
  signal \^allow_modf_strobe\ : STD_LOGIC;
  signal Allow_MODF_Strobe_i_1_n_0 : STD_LOGIC;
  signal Count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Count_trigger : STD_LOGIC;
  signal Count_trigger_d1 : STD_LOGIC;
  signal \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1_n_0\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\ : STD_LOGIC;
  signal \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1_n_0\ : STD_LOGIC;
  signal \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0\ : STD_LOGIC;
  signal \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1_n_0\ : STD_LOGIC;
  signal \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2_n_0\ : STD_LOGIC;
  signal \^local_tx_empty_fifo_12_gen.stop_clock_reg_reg_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[4]_i_3_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0\ : STD_LOGIC;
  signal \^other_ratio_generate.serial_dout_reg_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.sck_o_int_i_2_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.sck_o_int_i_3_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_4_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_5_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0\ : STD_LOGIC;
  signal Ratio_Count : STD_LOGIC_VECTOR ( 0 to 2 );
  signal SCK_I_sync : STD_LOGIC;
  signal \^spisel_sync\ : STD_LOGIC;
  signal SPIXfer_done_int_d1 : STD_LOGIC;
  signal \^spixfer_done_int_d1_reg_0\ : STD_LOGIC;
  signal SPIXfer_done_int_pulse : STD_LOGIC;
  signal SPIXfer_done_int_pulse_d1 : STD_LOGIC;
  signal SR_5_Tx_Empty_d1 : STD_LOGIC;
  signal SR_5_Tx_comeplete_Empty : STD_LOGIC;
  signal SR_5_Tx_comeplete_Empty_i_1_n_0 : STD_LOGIC;
  signal \SS_O[0]_i_4_n_0\ : STD_LOGIC;
  signal Slave_MODF_strobe_i_1_n_0 : STD_LOGIC;
  signal \^drr_overrun_int\ : STD_LOGIC;
  signal \^io0_o\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_19_out20_out : STD_LOGIC;
  signal p_37_out : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal rx_shft_reg_mode_0011 : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_shft_reg_mode_0110 : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_shft_reg_s : STD_LOGIC_VECTOR ( 0 to 7 );
  signal sck_d1 : STD_LOGIC;
  signal sck_d2 : STD_LOGIC;
  signal sck_i_d1 : STD_LOGIC;
  signal sck_o_int : STD_LOGIC;
  signal slave_MODF_strobe_int : STD_LOGIC;
  signal \^spixfer_done_int\ : STD_LOGIC;
  signal spi_cntrl_ps : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spisel_d1 : STD_LOGIC;
  signal \^spisel_d1_reg\ : STD_LOGIC;
  signal spisel_once_1 : STD_LOGIC;
  signal spisel_once_1_i_1_n_0 : STD_LOGIC;
  signal stop_clock52_in : STD_LOGIC;
  signal \^stop_clock_reg\ : STD_LOGIC;
  signal \^transfer_start_d1\ : STD_LOGIC;
  signal \^transfer_start_d1_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count[4]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.sck_o_int_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.serial_dout_int_i_1\ : label is "soft_lutpair46";
  attribute IOB : string;
  attribute IOB of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ : label is "TRUE";
  attribute box_type : string;
  attribute box_type of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_5\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of SCK_I_REG : label is "FD";
  attribute box_type of SCK_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of SPISEL_REG : label is "FD";
  attribute box_type of SPISEL_REG : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of SPIXfer_done_int_pulse_d1_i_1 : label is "soft_lutpair41";
  attribute XILINX_LEGACY_PRIM of SPI_TRISTATE_CONTROL_II : label is "FD";
  attribute box_type of SPI_TRISTATE_CONTROL_II : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of SPI_TRISTATE_CONTROL_III : label is "FD";
  attribute box_type of SPI_TRISTATE_CONTROL_III : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of SPI_TRISTATE_CONTROL_IV : label is "FD";
  attribute box_type of SPI_TRISTATE_CONTROL_IV : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of SPI_TRISTATE_CONTROL_V : label is "FD";
  attribute box_type of SPI_TRISTATE_CONTROL_V : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of SR_5_Tx_comeplete_Empty_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of spisel_once_1_i_1 : label is "soft_lutpair43";
begin
  Allow_MODF_Strobe <= \^allow_modf_strobe\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\;
  \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg_0\ <= \^local_tx_empty_fifo_12_gen.stop_clock_reg_reg_0\;
  \OTHER_RATIO_GENERATE.Serial_Dout_reg_0\ <= \^other_ratio_generate.serial_dout_reg_0\;
  SPISEL_sync <= \^spisel_sync\;
  SPIXfer_done_int_d1_reg_0 <= \^spixfer_done_int_d1_reg_0\;
  drr_Overrun_int <= \^drr_overrun_int\;
  io0_o <= \^io0_o\;
  spiXfer_done_int <= \^spixfer_done_int\;
  spisel_d1_reg <= \^spisel_d1_reg\;
  stop_clock_reg <= \^stop_clock_reg\;
  transfer_start_d1 <= \^transfer_start_d1\;
  transfer_start_d1_reg_0 <= \^transfer_start_d1_reg_0\;
Allow_MODF_Strobe_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^allow_modf_strobe\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      O => Allow_MODF_Strobe_i_1_n_0
    );
Allow_MODF_Strobe_reg: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => Allow_MODF_Strobe_i_1_n_0,
      Q => \^allow_modf_strobe\,
      S => Slave_MODF_strobe_i_1_n_0
    );
Allow_Slave_MODF_Strobe_reg: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\,
      Q => Allow_Slave_MODF_Strobe,
      S => Slave_MODF_strobe_i_1_n_0
    );
\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C8AA"
    )
        port map (
      I0 => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      I1 => SR_5_Tx_comeplete_Empty,
      I2 => SPIXfer_done_int_pulse,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5\,
      I4 => RESET_SYNC_AX2S_2,
      I5 => \^spisel_sync\,
      O => \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1_n_0\
    );
\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1_n_0\,
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      R => '0'
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.DRR_Overrun_reg_int_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => scndry_out,
      I1 => ram_full_i_reg,
      I2 => \^spixfer_done_int\,
      I3 => \^drr_overrun_int\,
      O => p_37_out
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.DRR_Overrun_reg_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_37_out,
      Q => \^drr_overrun_int\,
      R => Rst_to_spi
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0353035003500350"
    )
        port map (
      I0 => SR_5_Tx_comeplete_Empty,
      I1 => \out\,
      I2 => spi_cntrl_ps(1),
      I3 => spi_cntrl_ps(0),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I5 => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0\,
      O => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1_n_0\
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^transfer_start_d1_reg_0\,
      I1 => \^transfer_start_d1\,
      O => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0\
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2_n_0\,
      I1 => \^spixfer_done_int\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10\,
      I3 => spi_cntrl_ps(0),
      O => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1_n_0\
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00202C200C202C20"
    )
        port map (
      I0 => \out\,
      I1 => spi_cntrl_ps(1),
      I2 => spi_cntrl_ps(0),
      I3 => SR_5_Tx_comeplete_Empty,
      I4 => \^spixfer_done_int\,
      I5 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4\,
      O => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2_n_0\
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1_n_0\,
      Q => spi_cntrl_ps(0),
      R => Rst_to_spi
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1_n_0\,
      Q => spi_cntrl_ps(1),
      R => Rst_to_spi
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^local_tx_empty_fifo_12_gen.stop_clock_reg_reg_0\,
      O => stop_clock52_in
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => stop_clock52_in,
      Q => \^stop_clock_reg\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => slave_MODF_strobe_int,
      I1 => prmry_in,
      O => p_3_out
    );
\LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg_0\,
      I1 => \^spisel_d1_reg\,
      I2 => spisel_d1,
      O => \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg\
    );
MODF_strobe_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => MODF_strobe0,
      Q => modf_strobe_int,
      R => Slave_MODF_strobe_i_1_n_0
    );
\OTHER_RATIO_GENERATE.Count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I1 => load,
      O => Count(0)
    );
\OTHER_RATIO_GENERATE.Count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I2 => load,
      O => Count(1)
    );
\OTHER_RATIO_GENERATE.Count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => load,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I2 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I3 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      O => \OTHER_RATIO_GENERATE.Count[2]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => load,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I2 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I3 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      I4 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\,
      O => \OTHER_RATIO_GENERATE.Count[3]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDDFD"
    )
        port map (
      I0 => \^transfer_start_d1_reg_0\,
      I1 => Rst_to_spi,
      I2 => \^spisel_sync\,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I4 => \^spixfer_done_int_d1_reg_0\,
      O => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202020202F2F20"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.sck_o_int_i_2_n_0\,
      I1 => load,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => SCK_I_sync,
      I4 => sck_i_d1,
      I5 => \^spisel_sync\,
      O => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\
    );
\OTHER_RATIO_GENERATE.Count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => load,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      I2 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\,
      I3 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I4 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      O => \OTHER_RATIO_GENERATE.Count[4]_i_3_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => Count(0),
      Q => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => Count(1),
      Q => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => \OTHER_RATIO_GENERATE.Count[2]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => \OTHER_RATIO_GENERATE.Count[3]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => \OTHER_RATIO_GENERATE.Count[4]_i_3_n_0\,
      Q => load,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_trigger_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Count_trigger,
      I1 => \^transfer_start_d1_reg_0\,
      I2 => Rst_to_spi,
      O => \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_trigger_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0\,
      Q => Count_trigger_d1,
      R => '0'
    );
\OTHER_RATIO_GENERATE.Count_trigger_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA90000"
    )
        port map (
      I0 => Count_trigger,
      I1 => Ratio_Count(0),
      I2 => Ratio_Count(1),
      I3 => Ratio_Count(2),
      I4 => \^transfer_start_d1_reg_0\,
      I5 => Rst_to_spi,
      O => \OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_trigger_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0\,
      Q => Count_trigger,
      R => '0'
    );
\OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA9FFFF"
    )
        port map (
      I0 => Ratio_Count(0),
      I1 => Ratio_Count(1),
      I2 => Ratio_Count(2),
      I3 => Rst_to_spi,
      I4 => \^transfer_start_d1_reg_0\,
      O => \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9FF"
    )
        port map (
      I0 => Ratio_Count(1),
      I1 => Ratio_Count(2),
      I2 => Rst_to_spi,
      I3 => \^transfer_start_d1_reg_0\,
      O => \OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => Ratio_Count(2),
      I1 => Rst_to_spi,
      I2 => \^transfer_start_d1_reg_0\,
      O => \OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Ratio_Count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0\,
      Q => Ratio_Count(0),
      R => '0'
    );
\OTHER_RATIO_GENERATE.Ratio_Count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1_n_0\,
      Q => Ratio_Count(1),
      R => '0'
    );
\OTHER_RATIO_GENERATE.Ratio_Count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1_n_0\,
      Q => Ratio_Count(2),
      R => '0'
    );
\OTHER_RATIO_GENERATE.Serial_Dout_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_3_in,
      I1 => \^other_ratio_generate.serial_dout_reg_0\,
      I2 => \goreg_dm.dout_i_reg[0]\,
      I3 => \OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0\,
      I4 => \^io0_o\,
      O => \OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Serial_Dout_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101F1010101F101F"
    )
        port map (
      I0 => SPIXfer_done_int_d1,
      I1 => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => \^spixfer_done_int_d1_reg_0\,
      I4 => \out\,
      I5 => SR_5_Tx_Empty_d1,
      O => \^other_ratio_generate.serial_dout_reg_0\
    );
\OTHER_RATIO_GENERATE.Serial_Dout_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF500F7FFF5FF"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I1 => \^transfer_start_d1\,
      I2 => SPIXfer_done_int_d1,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I4 => \^transfer_start_d1_reg_0\,
      I5 => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0\,
      O => \OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0\
    );
\OTHER_RATIO_GENERATE.Serial_Dout_reg\: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0\,
      Q => \^io0_o\,
      S => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACFC0CF"
    )
        port map (
      I0 => \^transfer_start_d1_reg_0\,
      I1 => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0\,
      I4 => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2_n_0\,
      O => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[1]\,
      I1 => \^other_ratio_generate.serial_dout_reg_0\,
      I2 => Q(0),
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I4 => Q(7),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFFFF2F2F2F2F2"
    )
        port map (
      I0 => \^transfer_start_d1_reg_0\,
      I1 => \^transfer_start_d1\,
      I2 => SPIXfer_done_int_d1,
      I3 => Count_trigger,
      I4 => Count_trigger_d1,
      I5 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      O => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^spixfer_done_int_d1_reg_0\,
      I1 => \out\,
      I2 => SR_5_Tx_Empty_d1,
      O => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[2]\,
      I1 => \^other_ratio_generate.serial_dout_reg_0\,
      I2 => Q(1),
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I4 => Q(6),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[3]\,
      I1 => \^other_ratio_generate.serial_dout_reg_0\,
      I2 => Q(2),
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I4 => Q(5),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[4]\,
      I1 => \^other_ratio_generate.serial_dout_reg_0\,
      I2 => Q(3),
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I4 => Q(4),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[5]\,
      I1 => \^other_ratio_generate.serial_dout_reg_0\,
      I2 => Q(4),
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I4 => Q(3),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[6]\,
      I1 => \^other_ratio_generate.serial_dout_reg_0\,
      I2 => Q(5),
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I4 => Q(2),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[7]\,
      I1 => \^other_ratio_generate.serial_dout_reg_0\,
      I2 => Q(6),
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I4 => Q(1),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2_n_0\,
      Q => p_3_in,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[1]\,
      S => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[2]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[3]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[4]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[5]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[6]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \goreg_dm.dout_i_reg[7]\(0),
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[7]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sck_d1,
      I1 => \^transfer_start_d1_reg_0\,
      I2 => sck_d2,
      O => p_19_out20_out
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(1),
      Q => rx_shft_reg_mode_0011(0),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(2),
      Q => rx_shft_reg_mode_0011(1),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(3),
      Q => rx_shft_reg_mode_0011(2),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(4),
      Q => rx_shft_reg_mode_0011(3),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(5),
      Q => rx_shft_reg_mode_0011(4),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(6),
      Q => rx_shft_reg_mode_0011(5),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(7),
      Q => rx_shft_reg_mode_0011(6),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => D(0),
      Q => rx_shft_reg_mode_0011(7),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sck_d2,
      I1 => \^transfer_start_d1_reg_0\,
      I2 => sck_d1,
      O => p_17_out
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(1),
      Q => rx_shft_reg_mode_0110(0),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(2),
      Q => rx_shft_reg_mode_0110(1),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(3),
      Q => rx_shft_reg_mode_0110(2),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(4),
      Q => rx_shft_reg_mode_0110(3),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(5),
      Q => rx_shft_reg_mode_0110(4),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(6),
      Q => rx_shft_reg_mode_0110(5),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(7),
      Q => rx_shft_reg_mode_0110(6),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => D(0),
      Q => rx_shft_reg_mode_0110(7),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002202"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2_n_0\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I2 => SR_5_Tx_Empty_d1,
      I3 => \out\,
      I4 => \^spixfer_done_int_d1_reg_0\,
      I5 => p_6_out,
      O => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00060900"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I2 => \^spisel_sync\,
      I3 => SCK_I_sync,
      I4 => sck_i_d1,
      O => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2_n_0\
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(1),
      Q => rx_shft_reg_s(0),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(2),
      Q => rx_shft_reg_s(1),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(3),
      Q => rx_shft_reg_s(2),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(4),
      Q => rx_shft_reg_s(3),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(5),
      Q => rx_shft_reg_s(4),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(6),
      Q => rx_shft_reg_s(5),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(7),
      Q => rx_shft_reg_s(6),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => D(0),
      Q => rx_shft_reg_s(7),
      R => '0'
    );
\OTHER_RATIO_GENERATE.sck_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_o_int,
      Q => sck_d1,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.sck_d2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_d1,
      Q => sck_d2,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.sck_o_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF6A006A"
    )
        port map (
      I0 => sck_o_int,
      I1 => \^transfer_start_d1_reg_0\,
      I2 => \OTHER_RATIO_GENERATE.sck_o_int_i_2_n_0\,
      I3 => \OTHER_RATIO_GENERATE.sck_o_int_i_3_n_0\,
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_11\,
      I5 => RESET_SYNC_AX2S_2_0,
      O => \OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.sck_o_int_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Count_trigger,
      I1 => Count_trigger_d1,
      O => \OTHER_RATIO_GENERATE.sck_o_int_i_2_n_0\
    );
\OTHER_RATIO_GENERATE.sck_o_int_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^spixfer_done_int_d1_reg_0\,
      I1 => \^transfer_start_d1\,
      I2 => \^transfer_start_d1_reg_0\,
      O => \OTHER_RATIO_GENERATE.sck_o_int_i_3_n_0\
    );
\OTHER_RATIO_GENERATE.sck_o_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0\,
      Q => sck_o_int,
      R => '0'
    );
\OTHER_RATIO_GENERATE.serial_dout_int_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^io0_o\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4\,
      I2 => Rst_to_spi,
      O => \OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.serial_dout_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0\,
      Q => serial_dout_int,
      R => '0'
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0\,
      Q => sck_o,
      R => R
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I1 => load,
      I2 => \^transfer_start_d1\,
      I3 => \^transfer_start_d1_reg_0\,
      I4 => sck_o_int,
      O => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000E000E0E"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3_n_0\,
      I2 => \^spixfer_done_int_d1_reg_0\,
      I3 => \^transfer_start_d1\,
      I4 => \^transfer_start_d1_reg_0\,
      I5 => Rst_to_spi,
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2_n_0\,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I2 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      I3 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\,
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101000101000"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_4_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_5_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I5 => Count_trigger,
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Ratio_Count(0),
      I1 => Ratio_Count(1),
      I2 => Ratio_Count(2),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_4_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I2 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\,
      I3 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_5_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1_n_0\,
      Q => \^spixfer_done_int_d1_reg_0\,
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => rx_shft_reg_s(7),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I5 => rx_shft_reg_s(0),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(0),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I3 => rx_shft_reg_mode_0011(0),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(7),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I3 => rx_shft_reg_mode_0011(7),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => rx_shft_reg_s(6),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I5 => rx_shft_reg_s(1),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(6),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I3 => rx_shft_reg_mode_0011(6),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(1),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I3 => rx_shft_reg_mode_0011(1),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => rx_shft_reg_s(5),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I5 => rx_shft_reg_s(2),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(2),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I3 => rx_shft_reg_mode_0011(2),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(5),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I3 => rx_shft_reg_mode_0011(5),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => rx_shft_reg_s(4),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I5 => rx_shft_reg_s(3),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(3),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I3 => rx_shft_reg_mode_0011(3),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(4),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\,
      I3 => rx_shft_reg_mode_0011(4),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => rx_shft_reg_s(3),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I5 => rx_shft_reg_s(4),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => rx_shft_reg_s(2),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I5 => rx_shft_reg_s(5),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => rx_shft_reg_s(1),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I5 => rx_shft_reg_s(6),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\,
      I3 => rx_shft_reg_s(0),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\,
      I5 => rx_shft_reg_s(7),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0\,
      Q => \gpr1.dout_i_reg[7]\(7),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0\,
      Q => \gpr1.dout_i_reg[7]\(6),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0\,
      Q => \gpr1.dout_i_reg[7]\(5),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0\,
      Q => \gpr1.dout_i_reg[7]\(4),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0\,
      Q => \gpr1.dout_i_reg[7]\(3),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0\,
      Q => \gpr1.dout_i_reg[7]\(2),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0\,
      Q => \gpr1.dout_i_reg[7]\(1),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0\,
      Q => \gpr1.dout_i_reg[7]\(0),
      R => '0'
    );
SCK_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_i,
      Q => SCK_I_sync,
      R => '0'
    );
SPISEL_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spisel,
      Q => \^spisel_sync\,
      R => '0'
    );
SPIXfer_done_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^spixfer_done_int_d1_reg_0\,
      Q => SPIXfer_done_int_d1,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^spixfer_done_int_d1_reg_0\,
      I1 => SPIXfer_done_int_d1,
      O => SPIXfer_done_int_pulse
    );
SPIXfer_done_int_pulse_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_pulse,
      Q => SPIXfer_done_int_pulse_d1,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_pulse_d1,
      Q => \^spixfer_done_int\,
      R => Rst_to_spi
    );
SPI_TRISTATE_CONTROL_II: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => sck_t,
      R => '0'
    );
SPI_TRISTATE_CONTROL_III: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => io0_t,
      R => '0'
    );
SPI_TRISTATE_CONTROL_IV: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => ss_t,
      R => '0'
    );
SPI_TRISTATE_CONTROL_V: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      Q => io1_t,
      R => '0'
    );
SR_5_Tx_Empty_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \out\,
      Q => SR_5_Tx_Empty_d1,
      R => Rst_to_spi
    );
SR_5_Tx_comeplete_Empty_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA00"
    )
        port map (
      I0 => SR_5_Tx_comeplete_Empty,
      I1 => SPIXfer_done_int_d1,
      I2 => \^spixfer_done_int_d1_reg_0\,
      I3 => \out\,
      O => SR_5_Tx_comeplete_Empty_i_1_n_0
    );
SR_5_Tx_comeplete_Empty_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SR_5_Tx_comeplete_Empty_i_1_n_0,
      Q => SR_5_Tx_comeplete_Empty,
      R => '0'
    );
\SS_O[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F7FF"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9\,
      I1 => spi_cntrl_ps(1),
      I2 => spi_cntrl_ps(0),
      I3 => SR_5_Tx_comeplete_Empty,
      I4 => \SS_O[0]_i_4_n_0\,
      O => \^local_tx_empty_fifo_12_gen.stop_clock_reg_reg_0\
    );
\SS_O[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800FCC008000CC"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => \out\,
      I2 => SR_5_Tx_comeplete_Empty,
      I3 => spi_cntrl_ps(1),
      I4 => spi_cntrl_ps(0),
      I5 => \^stop_clock_reg\,
      O => \SS_O[0]_i_4_n_0\
    );
\SS_O_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2\,
      Q => ss_o(0),
      R => '0'
    );
Slave_MODF_strobe_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^spisel_sync\,
      I1 => Rst_to_spi,
      O => Slave_MODF_strobe_i_1_n_0
    );
Slave_MODF_strobe_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => Slave_MODF_strobe0,
      Q => slave_MODF_strobe_int,
      R => Slave_MODF_strobe_i_1_n_0
    );
\gc1.count_d1[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4040FF40"
    )
        port map (
      I0 => spisel_d1,
      I1 => \^spisel_d1_reg\,
      I2 => spisel_once_1,
      I3 => \^transfer_start_d1_reg_0\,
      I4 => \^transfer_start_d1\,
      I5 => \^spixfer_done_int\,
      O => empty_fwft_fb_o_i_reg
    );
\gic0.gc1.count_d1[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => ram_full_fb_i_reg,
      O => E(0)
    );
sck_i_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SCK_I_sync,
      Q => sck_i_d1,
      R => Rst_to_spi
    );
\spisel_d1_reg__0\: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^spisel_sync\,
      Q => spisel_d1,
      S => Rst_to_spi
    );
spisel_d2_reg: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => spisel_d1,
      Q => \^spisel_d1_reg\,
      S => Rst_to_spi
    );
spisel_once_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => spisel_once_1,
      I1 => spisel_d1,
      I2 => \^spisel_d1_reg\,
      O => spisel_once_1_i_1_n_0
    );
spisel_once_1_reg: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => spisel_once_1_i_1_n_0,
      Q => spisel_once_1,
      S => Rst_to_spi
    );
transfer_start_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^transfer_start_d1_reg_0\,
      Q => \^transfer_start_d1\,
      R => Rst_to_spi
    );
transfer_start_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\,
      Q => \^transfer_start_d1_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_qspi_status_slave_sel_reg is
  port (
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ : out STD_LOGIC;
    modf_reg_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_qspi_status_slave_sel_reg : entity is "qspi_status_slave_sel_reg";
end Arty_Z7_20_PmodGYRO_0_0_qspi_status_slave_sel_reg;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_qspi_status_slave_sel_reg is
begin
\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\,
      S => reset2ip_reset_int
    );
modf_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => modf_reg_0,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_reset_sync_module is
  port (
    p_6_out : out STD_LOGIC;
    Rst_to_spi : out STD_LOGIC;
    \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.sck_o_int_reg\ : out STD_LOGIC;
    transfer_start_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_reset_sync_module : entity is "reset_sync_module";
end Arty_Z7_20_PmodGYRO_0_0_reset_sync_module;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_reset_sync_module is
  signal \^rst_to_spi\ : STD_LOGIC;
  signal Soft_Reset_frm_axi_d1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_3\ : label is "soft_lutpair47";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of RESET_SYNC_AX2S_1 : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_1 : label is "FDR";
  attribute box_type : string;
  attribute box_type of RESET_SYNC_AX2S_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_2 : label is "FDR";
  attribute box_type of RESET_SYNC_AX2S_2 : label is "PRIMITIVE";
begin
  Rst_to_spi <= \^rst_to_spi\;
\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rst_to_spi\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      O => \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rst_to_spi\,
      I1 => transfer_start_reg,
      O => p_6_out
    );
\OTHER_RATIO_GENERATE.sck_o_int_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rst_to_spi\,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      O => \OTHER_RATIO_GENERATE.sck_o_int_reg\
    );
RESET_SYNC_AX2S_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => reset2ip_reset_int,
      Q => Soft_Reset_frm_axi_d1,
      R => '0'
    );
RESET_SYNC_AX2S_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Soft_Reset_frm_axi_d1,
      Q => \^rst_to_spi\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    wrack : out STD_LOGIC;
    \icount_out_reg[0]\ : out STD_LOGIC;
    \icount_out_reg[0]_0\ : out STD_LOGIC;
    reset2ip_reset_int : out STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_soft_reset : entity is "soft_reset";
end Arty_Z7_20_PmodGYRO_0_0_soft_reset;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_soft_reset is
  signal FF_WRACK_i_1_n_0 : STD_LOGIC;
  signal \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal flop_q_chain : STD_LOGIC_VECTOR ( 1 to 15 );
  signal \^icount_out_reg[0]\ : STD_LOGIC;
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of FF_WRACK : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of FF_WRACK : label is "1'b0";
  attribute box_type : string;
  attribute box_type of FF_WRACK : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FF_WRACK_i_1 : label is "soft_lutpair49";
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[10].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[10].RST_FLOPS_i_1\ : label is "soft_lutpair54";
  attribute IS_CE_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[11].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[11].RST_FLOPS_i_1\ : label is "soft_lutpair55";
  attribute IS_CE_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[12].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[12].RST_FLOPS_i_1\ : label is "soft_lutpair55";
  attribute IS_CE_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[13].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[13].RST_FLOPS_i_1\ : label is "soft_lutpair56";
  attribute IS_CE_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[14].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[14].RST_FLOPS_i_1\ : label is "soft_lutpair56";
  attribute IS_CE_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[15].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[15].RST_FLOPS_i_1\ : label is "soft_lutpair49";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair50";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair50";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[3].RST_FLOPS_i_1\ : label is "soft_lutpair51";
  attribute IS_CE_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[4].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[4].RST_FLOPS_i_1\ : label is "soft_lutpair51";
  attribute IS_CE_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[5].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[5].RST_FLOPS_i_1\ : label is "soft_lutpair52";
  attribute IS_CE_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[6].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[6].RST_FLOPS_i_1\ : label is "soft_lutpair52";
  attribute IS_CE_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[7].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[7].RST_FLOPS_i_1\ : label is "soft_lutpair53";
  attribute IS_CE_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[8].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[8].RST_FLOPS_i_1\ : label is "soft_lutpair53";
  attribute IS_CE_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[9].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[9].RST_FLOPS_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of RESET_SYNC_AX2S_1_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \icount_out[0]_i_1__0\ : label is "soft_lutpair48";
begin
  \icount_out_reg[0]\ <= \^icount_out_reg[0]\;
FF_WRACK: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => FF_WRACK_i_1_n_0,
      Q => wrack,
      R => bus2ip_reset_ipif_inverted
    );
FF_WRACK_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^icount_out_reg[0]\,
      I1 => flop_q_chain(15),
      O => FF_WRACK_i_1_n_0
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => S,
      Q => flop_q_chain(1),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[10].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(11),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[10].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(10),
      O => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[11].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(12),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[11].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(11),
      O => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[12].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(13),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[12].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(12),
      O => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[13].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(14),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[13].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(13),
      O => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[14].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(15),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[14].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(14),
      O => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[15].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\,
      Q => \^icount_out_reg[0]\,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[15].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(15),
      O => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(2),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(1),
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(3),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(2),
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(4),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(3),
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[4].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(5),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[4].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(4),
      O => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[5].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(6),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[5].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(5),
      O => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[6].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(7),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[6].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(6),
      O => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[7].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(8),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[7].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(7),
      O => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[8].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(9),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[8].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(8),
      O => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[9].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(10),
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[9].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(9),
      O => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\
    );
RESET_SYNC_AX2S_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^icount_out_reg[0]\,
      I1 => bus2ip_reset_ipif_inverted,
      O => reset2ip_reset_int
    );
\icount_out[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^icount_out_reg[0]\,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      I3 => D(0),
      O => \icount_out_reg[0]_0\
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig0,
      Q => S,
      R => bus2ip_reset_ipif_inverted
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sw_rst_cond,
      Q => sw_rst_cond_d1,
      R => bus2ip_reset_ipif_inverted
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_dmem is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    I113 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc1.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    L : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_dmem : entity is "dmem";
end Arty_Z7_20_PmodGYRO_0_0_dmem;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_dmem is
  signal RAM_reg_0_15_0_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_6_7_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_6_7_n_1 : STD_LOGIC;
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_7 : label is "";
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => L(3 downto 0),
      DIA(1 downto 0) => s_axi_wdata(1 downto 0),
      DIB(1 downto 0) => s_axi_wdata(3 downto 2),
      DIC(1 downto 0) => s_axi_wdata(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_0_5_n_0,
      DOA(0) => RAM_reg_0_15_0_5_n_1,
      DOB(1) => RAM_reg_0_15_0_5_n_2,
      DOB(0) => RAM_reg_0_15_0_5_n_3,
      DOC(1) => RAM_reg_0_15_0_5_n_4,
      DOC(0) => RAM_reg_0_15_0_5_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => I113
    );
RAM_reg_0_15_6_7: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => L(3 downto 0),
      DIA(1 downto 0) => s_axi_wdata(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_6_7_n_0,
      DOA(0) => RAM_reg_0_15_6_7_n_1,
      DOB(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => I113
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_1,
      Q => Q(0)
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_0,
      Q => Q(1)
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_3,
      Q => Q(2)
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_2,
      Q => Q(3)
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_5,
      Q => Q(4)
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_4,
      Q => Q(5)
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => RAM_reg_0_15_6_7_n_1,
      Q => Q(6)
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => RAM_reg_0_15_6_7_n_0,
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_dmem_22 is
  port (
    \goreg_dm.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc1.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    L : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_dmem_22 : entity is "dmem";
end Arty_Z7_20_PmodGYRO_0_0_dmem_22;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_dmem_22 is
  signal RAM_reg_0_15_0_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_6_7_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_6_7_n_1 : STD_LOGIC;
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_7 : label is "";
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => L(3 downto 0),
      DIA(1 downto 0) => Q(1 downto 0),
      DIB(1 downto 0) => Q(3 downto 2),
      DIC(1 downto 0) => Q(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_0_5_n_0,
      DOA(0) => RAM_reg_0_15_0_5_n_1,
      DOB(1) => RAM_reg_0_15_0_5_n_2,
      DOB(0) => RAM_reg_0_15_0_5_n_3,
      DOC(1) => RAM_reg_0_15_0_5_n_4,
      DOC(0) => RAM_reg_0_15_0_5_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => ext_spi_clk,
      WE => E(0)
    );
RAM_reg_0_15_6_7: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => L(3 downto 0),
      DIA(1 downto 0) => Q(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_6_7_n_0,
      DOA(0) => RAM_reg_0_15_6_7_n_1,
      DOB(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => ext_spi_clk,
      WE => E(0)
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_1,
      Q => \goreg_dm.dout_i_reg[7]\(0)
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_0,
      Q => \goreg_dm.dout_i_reg[7]\(1)
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_3,
      Q => \goreg_dm.dout_i_reg[7]\(2)
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_2,
      Q => \goreg_dm.dout_i_reg[7]\(3)
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_5,
      Q => \goreg_dm.dout_i_reg[7]\(4)
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => AR(0),
      D => RAM_reg_0_15_0_5_n_4,
      Q => \goreg_dm.dout_i_reg[7]\(5)
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => AR(0),
      D => RAM_reg_0_15_6_7_n_1,
      Q => \goreg_dm.dout_i_reg[7]\(6)
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => AR(0),
      D => RAM_reg_0_15_6_7_n_0,
      Q => \goreg_dm.dout_i_reg[7]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : out STD_LOGIC;
    \gnxpm_cdc.wr_pntr_bin_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr : entity is "rd_bin_cntr";
end Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_4__0_n_0\ : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[0]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[1]_i_1__0\ : label is "soft_lutpair34";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gc1.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => \plusOp__3\(0)
    );
\gc1.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => \plusOp__3\(1)
    );
\gc1.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(0),
      O => \plusOp__3\(2)
    );
\gc1.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rd_pntr_plus2(3),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(2),
      O => \plusOp__3\(3)
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      PRE => AR(0),
      Q => rd_pntr_plus1(0)
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus2(1),
      Q => rd_pntr_plus1(1)
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus2(2),
      Q => rd_pntr_plus1(2)
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus2(3),
      Q => rd_pntr_plus1(3)
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(0),
      Q => \^q\(0)
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(1),
      Q => \^q\(1)
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(2),
      Q => \^q\(2)
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(3),
      Q => \^q\(3)
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__3\(0),
      Q => rd_pntr_plus2(0)
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \plusOp__3\(1),
      PRE => AR(0),
      Q => rd_pntr_plus2(1)
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__3\(2),
      Q => rd_pntr_plus2(2)
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__3\(3),
      Q => rd_pntr_plus2(3)
    );
\gnxpm_cdc.rd_pntr_gc[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => D(0)
    );
\gnxpm_cdc.rd_pntr_gc[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => D(1)
    );
\gnxpm_cdc.rd_pntr_gc[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => D(2)
    );
\ram_empty_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \gnxpm_cdc.wr_pntr_bin_reg[3]\(3),
      I1 => rd_pntr_plus1(3),
      I2 => \gnxpm_cdc.wr_pntr_bin_reg[3]\(0),
      I3 => rd_pntr_plus1(0),
      I4 => \ram_empty_i_i_4__0_n_0\,
      O => ram_empty_i_reg
    );
\ram_empty_i_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => \gnxpm_cdc.wr_pntr_bin_reg[3]\(1),
      I2 => rd_pntr_plus1(2),
      I3 => \gnxpm_cdc.wr_pntr_bin_reg[3]\(2),
      O => \ram_empty_i_i_4__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr_27 is
  port (
    ram_empty_i0 : out STD_LOGIC;
    \gnxpm_cdc.rd_pntr_gc_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc1.count_d2_reg[3]_0\ : in STD_LOGIC;
    \gnxpm_cdc.wr_pntr_bin_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr_27 : entity is "rd_bin_cntr";
end Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr_27;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr_27 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_empty_i_i_2_n_0 : STD_LOGIC;
  signal ram_empty_i_i_4_n_0 : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gnxpm_cdc.rd_pntr_gc[2]_i_1\ : label is "soft_lutpair28";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => \plusOp__0\(0)
    );
\gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => \plusOp__0\(1)
    );
\gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(0),
      O => \plusOp__0\(2)
    );
\gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rd_pntr_plus2(3),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(2),
      O => \plusOp__0\(3)
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      PRE => AR(0),
      Q => rd_pntr_plus1(0)
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus2(1),
      Q => rd_pntr_plus1(1)
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus2(2),
      Q => rd_pntr_plus1(2)
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus2(3),
      Q => rd_pntr_plus1(3)
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(0),
      Q => \^q\(0)
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(1),
      Q => \^q\(1)
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(2),
      Q => \^q\(2)
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(3),
      Q => \^q\(3)
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(0),
      Q => rd_pntr_plus2(0)
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__0\(1),
      PRE => AR(0),
      Q => rd_pntr_plus2(1)
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => rd_pntr_plus2(2)
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => rd_pntr_plus2(3)
    );
\gnxpm_cdc.rd_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \gnxpm_cdc.rd_pntr_gc_reg[2]\(0)
    );
\gnxpm_cdc.rd_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => \gnxpm_cdc.rd_pntr_gc_reg[2]\(1)
    );
\gnxpm_cdc.rd_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \gnxpm_cdc.rd_pntr_gc_reg[2]\(2)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ram_empty_i_i_2_n_0,
      I1 => E(0),
      I2 => \gc1.count_d2_reg[3]_0\,
      O => ram_empty_i0
    );
ram_empty_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \gnxpm_cdc.wr_pntr_bin_reg[3]\(0),
      I1 => rd_pntr_plus1(0),
      I2 => \gnxpm_cdc.wr_pntr_bin_reg[3]\(3),
      I3 => rd_pntr_plus1(3),
      I4 => ram_empty_i_i_4_n_0,
      O => ram_empty_i_i_2_n_0
    );
ram_empty_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => \gnxpm_cdc.wr_pntr_bin_reg[3]\(2),
      I2 => rd_pntr_plus1(1),
      I3 => \gnxpm_cdc.wr_pntr_bin_reg[3]\(1),
      O => ram_empty_i_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_rd_fwft is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i0 : out STD_LOGIC;
    \goreg_dm.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    \spisel_d1_reg__0\ : in STD_LOGIC;
    \gnxpm_cdc.wr_pntr_bin_reg[3]\ : in STD_LOGIC;
    \gc1.count_d2_reg[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_rd_fwft : entity is "rd_fwft";
end Arty_Z7_20_PmodGYRO_0_0_rd_fwft;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \gpregsm1.curr_fwft_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  \out\ <= empty_fwft_i;
\aempty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA8AA88A"
    )
        port map (
      I0 => aempty_fwft_fb_i,
      I1 => ram_empty_fb_i_reg,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => \spisel_d1_reg__0\,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_i
    );
\empty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => \spisel_d1_reg__0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_i,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_i
    );
\empty_fwft_fb_o_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => \spisel_d1_reg__0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_i
    );
\gc1.count_d1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => \spisel_d1_reg__0\,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => E(0)
    );
\goreg_dm.dout_i[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => \spisel_d1_reg__0\,
      I2 => curr_fwft_state(0),
      O => \goreg_dm.dout_i_reg[7]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => \spisel_d1_reg__0\,
      I2 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \spisel_d1_reg__0\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => ram_empty_fb_i_reg,
      O => \gpregsm1.curr_fwft_state[1]_i_1__0_n_0\
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => \gpregsm1.curr_fwft_state[1]_i_1__0_n_0\,
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => user_valid
    );
\ram_empty_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004555"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => \spisel_d1_reg__0\,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => \gnxpm_cdc.wr_pntr_bin_reg[3]\,
      I5 => \gc1.count_d2_reg[3]\,
      O => ram_empty_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_rd_fwft_25 is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icount_out_reg[3]\ : out STD_LOGIC;
    Receive_ip2bus_error0 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_rd_fwft_25 : entity is "rd_fwft";
end Arty_Z7_20_PmodGYRO_0_0_rd_fwft_25;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_rd_fwft_25 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \gpregsm1.curr_fwft_state[1]_i_1_n_0\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  \out\ <= empty_fwft_i;
Receive_ip2bus_error_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      I1 => empty_fwft_i,
      I2 => p_5_in,
      I3 => Bus_RNW_reg,
      O => Receive_ip2bus_error0
    );
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10F000F100FF00"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      I2 => ram_empty_fb_i_reg,
      I3 => aempty_fwft_fb_i,
      I4 => curr_fwft_state(0),
      I5 => curr_fwft_state(1),
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_i
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0100"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => empty_fwft_fb_i,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0100"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_i
    );
\gc1.count_d1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01555555"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => empty_fwft_i,
      I2 => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      O => E(0)
    );
\goreg_dm.dout_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000000AAAAAAAA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => empty_fwft_i,
      I2 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      I3 => Bus_RNW_reg,
      I4 => p_5_in,
      I5 => curr_fwft_state(0),
      O => \goreg_dm.dout_i_reg[7]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA2AAA"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => p_5_in,
      I2 => Bus_RNW_reg,
      I3 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      I4 => empty_fwft_i,
      I5 => curr_fwft_state(1),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E000FFFF"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => ram_empty_fb_i_reg,
      O => \gpregsm1.curr_fwft_state[1]_i_1_n_0\
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gpregsm1.curr_fwft_state[1]_i_1_n_0\,
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => user_valid
    );
\icount_out[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      I2 => Bus_RNW_reg,
      I3 => p_5_in,
      O => \icount_out_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i0 : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as : entity is "rd_status_flags_as";
end Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => ram_empty_i0,
      PRE => AR(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => ram_empty_i0,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as_26 is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as_26 : entity is "rd_status_flags_as";
end Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as_26;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as_26 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_i0,
      PRE => AR(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_i0,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff : entity is "synchronizer_ff";
end Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_18 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_18 : entity is "synchronizer_ff";
end Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_18;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_18 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_19 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_19 : entity is "synchronizer_ff";
end Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_19;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_19 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_20 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_20 : entity is "synchronizer_ff";
end Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_20;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_20 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_21 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_21 : entity is "synchronizer_ff";
end Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_21;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_21 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_3 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_3 : entity is "synchronizer_ff";
end Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_3;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_3 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_4 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_4 : entity is "synchronizer_ff";
end Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_4;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_4 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_5 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_5 : entity is "synchronizer_ff";
end Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_5;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_5 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0\ : entity is "synchronizer_ff";
end \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
begin
  D(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(3),
      Q => Q_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_28\ is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_28\ : entity is "synchronizer_ff";
end \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_28\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_28\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
begin
  D(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(3),
      Q => Q_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_29\ is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_29\ : entity is "synchronizer_ff";
end \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_29\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_29\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
begin
  D(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => Q(3),
      Q => Q_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_30\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_30\ : entity is "synchronizer_ff";
end \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_30\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_30\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
begin
  \out\(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \Q_reg_reg[3]_0\(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \Q_reg_reg[3]_0\(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \Q_reg_reg[3]_0\(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \Q_reg_reg[3]_0\(3),
      Q => Q_reg(3)
    );
\gnxpm_cdc.wr_pntr_bin[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_31\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_31\ : entity is "synchronizer_ff";
end \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_31\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_31\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
begin
  \out\(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => \Q_reg_reg[3]_0\(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => \Q_reg_reg[3]_0\(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => \Q_reg_reg[3]_0\(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => \Q_reg_reg[3]_0\(3),
      Q => Q_reg(3)
    );
\gnxpm_cdc.rd_pntr_bin[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_6\ is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_6\ : entity is "synchronizer_ff";
end \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_6\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_6\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
begin
  D(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(3),
      Q => Q_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_7\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_7\ : entity is "synchronizer_ff";
end \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_7\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_7\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
begin
  \out\(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \Q_reg_reg[3]_0\(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \Q_reg_reg[3]_0\(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \Q_reg_reg[3]_0\(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \Q_reg_reg[3]_0\(3),
      Q => Q_reg(3)
    );
\gnxpm_cdc.wr_pntr_bin[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_8\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_8\ : entity is "synchronizer_ff";
end \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_8\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_8\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
begin
  \out\(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Q_reg_reg[3]_0\(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Q_reg_reg[3]_0\(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Q_reg_reg[3]_0\(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \Q_reg_reg[3]_0\(3),
      Q => Q_reg(3)
    );
\gnxpm_cdc.rd_pntr_bin[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr is
  port (
    ram_full_i_reg : out STD_LOGIC;
    \gic0.gc1.count_d2_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gnxpm_cdc.wr_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[3]\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[0]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr : entity is "wr_bin_cntr";
end Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^gic0.gc1.count_d2_reg[2]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_full_i_i_2_n_0 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc1.count[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gic0.gc1.count[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gic0.gc1.count[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gic0.gc1.count[3]_i_1\ : label is "soft_lutpair35";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \gic0.gc1.count_d2_reg[2]_0\(1 downto 0) <= \^gic0.gc1.count_d2_reg[2]_0\(1 downto 0);
\gic0.gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      O => \plusOp__1\(0)
    );
\gic0.gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      O => \plusOp__1\(1)
    );
\gic0.gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wr_pntr_plus3(2),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(0),
      O => \plusOp__1\(2)
    );
\gic0.gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => wr_pntr_plus3(3),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(2),
      O => \plusOp__1\(3)
    );
\gic0.gc1.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(0),
      Q => \^gic0.gc1.count_d2_reg[2]_0\(0)
    );
\gic0.gc1.count_d1_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(1),
      PRE => AR(0),
      Q => wr_pntr_plus2(1)
    );
\gic0.gc1.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(2),
      Q => \^gic0.gc1.count_d2_reg[2]_0\(1)
    );
\gic0.gc1.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(3),
      Q => wr_pntr_plus2(3)
    );
\gic0.gc1.count_d2_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[2]_0\(0),
      PRE => AR(0),
      Q => p_13_out(0)
    );
\gic0.gc1.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(1),
      Q => \^q\(0)
    );
\gic0.gc1.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc1.count_d2_reg[2]_0\(1),
      Q => \^q\(1)
    );
\gic0.gc1.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(3),
      Q => \^q\(2)
    );
\gic0.gc1.count_d3_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(0),
      Q => \gnxpm_cdc.wr_pntr_gc_reg[3]\(0)
    );
\gic0.gc1.count_d3_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \gnxpm_cdc.wr_pntr_gc_reg[3]\(1)
    );
\gic0.gc1.count_d3_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \gnxpm_cdc.wr_pntr_gc_reg[3]\(2)
    );
\gic0.gc1.count_d3_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \gnxpm_cdc.wr_pntr_gc_reg[3]\(3)
    );
\gic0.gc1.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(0),
      PRE => AR(0),
      Q => wr_pntr_plus3(0)
    );
\gic0.gc1.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__1\(1),
      PRE => AR(0),
      Q => wr_pntr_plus3(1)
    );
\gic0.gc1.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(2),
      Q => wr_pntr_plus3(2)
    );
\gic0.gc1.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(3),
      Q => wr_pntr_plus3(3)
    );
ram_full_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAE"
    )
        port map (
      I0 => ram_full_i_i_2_n_0,
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[3]\,
      I2 => p_13_out(0),
      I3 => \gnxpm_cdc.rd_pntr_bin_reg[3]_0\(0),
      I4 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      O => ram_full_i_reg
    );
ram_full_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002000000002002"
    )
        port map (
      I0 => E(0),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[0]\,
      I2 => \gnxpm_cdc.rd_pntr_bin_reg[3]_0\(2),
      I3 => wr_pntr_plus2(3),
      I4 => \gnxpm_cdc.rd_pntr_bin_reg[3]_0\(1),
      I5 => wr_pntr_plus2(1),
      O => ram_full_i_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr_24 is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.wr_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr_24 : entity is "wr_bin_cntr";
end Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr_24;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr_24 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_full_i_i_4__0_n_0\ : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc1.count[0]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gic0.gc1.count[1]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gic0.gc1.count[2]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gic0.gc1.count[3]_i_1__0\ : label is "soft_lutpair29";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gic0.gc1.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      O => \plusOp__2\(0)
    );
\gic0.gc1.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      O => \plusOp__2\(1)
    );
\gic0.gc1.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wr_pntr_plus3(2),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(0),
      O => \plusOp__2\(2)
    );
\gic0.gc1.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => wr_pntr_plus3(3),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(2),
      O => \plusOp__2\(3)
    );
\gic0.gc1.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(0),
      Q => wr_pntr_plus2(0)
    );
\gic0.gc1.count_d1_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      D => wr_pntr_plus3(1),
      PRE => AR(0),
      Q => wr_pntr_plus2(1)
    );
\gic0.gc1.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(2),
      Q => wr_pntr_plus2(2)
    );
\gic0.gc1.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus3(3),
      Q => wr_pntr_plus2(3)
    );
\gic0.gc1.count_d2_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      D => wr_pntr_plus2(0),
      PRE => AR(0),
      Q => \^q\(0)
    );
\gic0.gc1.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(1),
      Q => \^q\(1)
    );
\gic0.gc1.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(2),
      Q => \^q\(2)
    );
\gic0.gc1.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus2(3),
      Q => \^q\(3)
    );
\gic0.gc1.count_d3_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \gnxpm_cdc.wr_pntr_gc_reg[3]\(0)
    );
\gic0.gc1.count_d3_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \gnxpm_cdc.wr_pntr_gc_reg[3]\(1)
    );
\gic0.gc1.count_d3_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \gnxpm_cdc.wr_pntr_gc_reg[3]\(2)
    );
\gic0.gc1.count_d3_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => \gnxpm_cdc.wr_pntr_gc_reg[3]\(3)
    );
\gic0.gc1.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \plusOp__2\(0),
      PRE => AR(0),
      Q => wr_pntr_plus3(0)
    );
\gic0.gc1.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \plusOp__2\(1),
      PRE => AR(0),
      Q => wr_pntr_plus3(1)
    );
\gic0.gc1.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__2\(2),
      Q => wr_pntr_plus3(2)
    );
\gic0.gc1.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__2\(3),
      Q => wr_pntr_plus3(3)
    );
\ram_full_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \gnxpm_cdc.rd_pntr_bin_reg[3]\(0),
      I1 => wr_pntr_plus2(0),
      I2 => \gnxpm_cdc.rd_pntr_bin_reg[3]\(1),
      I3 => wr_pntr_plus2(1),
      I4 => \ram_full_i_i_4__0_n_0\,
      O => ram_full_fb_i_reg
    );
\ram_full_i_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => wr_pntr_plus2(2),
      I1 => \gnxpm_cdc.rd_pntr_bin_reg[3]\(2),
      I2 => wr_pntr_plus2(3),
      I3 => \gnxpm_cdc.rd_pntr_bin_reg[3]\(3),
      O => \ram_full_i_i_4__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as is
  port (
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d2_reg[0]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as : entity is "wr_status_flags_as";
end Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \gic0.gc1.count_reg[0]\ <= ram_full_i;
\gic0.gc1.count_d1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => ram_full_i,
      I1 => p_6_in,
      I2 => ip2Bus_WrAck_core_reg_1,
      I3 => Bus_RNW_reg,
      I4 => ram_full_fb_i,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gic0.gc1.count_d2_reg[0]\,
      PRE => \out\,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gic0.gc1.count_d2_reg[0]\,
      PRE => \out\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as_23 is
  port (
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ : out STD_LOGIC;
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[0]\ : in STD_LOGIC;
    \gic0.gc1.count_d2_reg[3]\ : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as_23 : entity is "wr_status_flags_as";
end Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as_23;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as_23 is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  signal \ram_full_i_i_1__0_n_0\ : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ <= ram_full_i;
  ram_full_fb_i_reg_0 <= ram_full_fb_i;
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ram_full_i,
      I1 => scndry_out,
      O => Rx_FIFO_Full_Fifo
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \ram_full_i_i_1__0_n_0\,
      PRE => \out\,
      Q => ram_full_fb_i
    );
\ram_full_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF02"
    )
        port map (
      I0 => spiXfer_done_int,
      I1 => ram_full_fb_i,
      I2 => \gnxpm_cdc.rd_pntr_bin_reg[0]\,
      I3 => \gic0.gc1.count_d2_reg[3]\,
      I4 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      O => \ram_full_i_i_1__0_n_0\
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \ram_full_i_i_1__0_n_0\,
      PRE => \out\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_GPIO_Core is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GPIO_xferAck_i : out STD_LOGIC;
    gpio_xferAck_Reg : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_rdack_i : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    Read_Reg_Rst : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw : in STD_LOGIC;
    bus2ip_cs : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bus2ip_rnw_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_GPIO_Core : entity is "GPIO_Core";
end Arty_Z7_20_PmodGYRO_0_0_GPIO_Core;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_GPIO_Core is
  signal GPIO_DBus_i : STD_LOGIC_VECTOR ( 28 to 28 );
  signal \^gpio_xferack_i\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].GPIO_DBus_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].GPIO_DBus_i[30]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].GPIO_DBus_i[31]_i_2_n_0\ : STD_LOGIC;
  signal gpio_Data_In : STD_LOGIC_VECTOR ( 0 to 3 );
  signal gpio_io_i_d2 : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \^gpio_io_o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gpio_io_t\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gpio_xferack_reg\ : STD_LOGIC;
  signal iGPIO_xferAck : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of iGPIO_xferAck_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ip2bus_rdack_i_D1_i_1 : label is "soft_lutpair4";
begin
  GPIO_xferAck_i <= \^gpio_xferack_i\;
  gpio_io_o(3 downto 0) <= \^gpio_io_o\(3 downto 0);
  gpio_io_t(3 downto 0) <= \^gpio_io_t\(3 downto 0);
  gpio_xferAck_Reg <= \^gpio_xferack_reg\;
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3232CF00"
    )
        port map (
      I0 => gpio_Data_In(0),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I2 => Q(0),
      I3 => \^gpio_io_o\(3),
      I4 => \^gpio_io_t\(3),
      O => GPIO_DBus_i(28)
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GPIO_DBus_i(28),
      Q => D(3),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].GPIO_DBus_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3232CF00"
    )
        port map (
      I0 => gpio_Data_In(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I2 => Q(0),
      I3 => \^gpio_io_o\(2),
      I4 => \^gpio_io_t\(2),
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].GPIO_DBus_i[29]_i_1_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].GPIO_DBus_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].GPIO_DBus_i[29]_i_1_n_0\,
      Q => D(2),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].GPIO_DBus_i[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3232CF00"
    )
        port map (
      I0 => gpio_Data_In(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I2 => Q(0),
      I3 => \^gpio_io_o\(1),
      I4 => \^gpio_io_t\(1),
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].GPIO_DBus_i[30]_i_1_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].GPIO_DBus_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].GPIO_DBus_i[30]_i_1_n_0\,
      Q => D(1),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].GPIO_DBus_i[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3232CF00"
    )
        port map (
      I0 => gpio_Data_In(3),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I2 => Q(0),
      I3 => \^gpio_io_o\(0),
      I4 => \^gpio_io_t\(0),
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].GPIO_DBus_i[31]_i_2_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].GPIO_DBus_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].GPIO_DBus_i[31]_i_2_n_0\,
      Q => D(0),
      R => Read_Reg_Rst
    );
\Not_Dual.INPUT_DOUBLE_REGS3\: entity work.Arty_Z7_20_PmodGYRO_0_0_cdc_sync
     port map (
      gpio_io_i(3 downto 0) => gpio_io_i(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      scndry_vect_out(3) => gpio_io_i_d2(0),
      scndry_vect_out(2) => gpio_io_i_d2(1),
      scndry_vect_out(1) => gpio_io_i_d2(2),
      scndry_vect_out(0) => gpio_io_i_d2(3)
    );
\Not_Dual.gpio_Data_In_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(0),
      Q => gpio_Data_In(0),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(1),
      Q => gpio_Data_In(1),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(2),
      Q => gpio_Data_In(2),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(3),
      Q => gpio_Data_In(3),
      R => '0'
    );
\Not_Dual.gpio_Data_Out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \bus2ip_addr_i_reg[3]\(3),
      Q => \^gpio_io_o\(3),
      R => SS(0)
    );
\Not_Dual.gpio_Data_Out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \bus2ip_addr_i_reg[3]\(2),
      Q => \^gpio_io_o\(2),
      R => SS(0)
    );
\Not_Dual.gpio_Data_Out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \bus2ip_addr_i_reg[3]\(1),
      Q => \^gpio_io_o\(1),
      R => SS(0)
    );
\Not_Dual.gpio_Data_Out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \bus2ip_addr_i_reg[3]\(0),
      Q => \^gpio_io_o\(0),
      R => SS(0)
    );
\Not_Dual.gpio_OE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_rnw_i_reg(0),
      D => \bus2ip_addr_i_reg[3]\(3),
      Q => \^gpio_io_t\(3),
      S => SS(0)
    );
\Not_Dual.gpio_OE_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_rnw_i_reg(0),
      D => \bus2ip_addr_i_reg[3]\(2),
      Q => \^gpio_io_t\(2),
      S => SS(0)
    );
\Not_Dual.gpio_OE_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_rnw_i_reg(0),
      D => \bus2ip_addr_i_reg[3]\(1),
      Q => \^gpio_io_t\(1),
      S => SS(0)
    );
\Not_Dual.gpio_OE_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_rnw_i_reg(0),
      D => \bus2ip_addr_i_reg[3]\(0),
      Q => \^gpio_io_t\(0),
      S => SS(0)
    );
gpio_xferAck_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_xferack_i\,
      Q => \^gpio_xferack_reg\,
      R => SS(0)
    );
iGPIO_xferAck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^gpio_xferack_i\,
      I1 => \^gpio_xferack_reg\,
      I2 => bus2ip_cs,
      O => iGPIO_xferAck
    );
iGPIO_xferAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => iGPIO_xferAck,
      Q => \^gpio_xferack_i\,
      R => SS(0)
    );
ip2bus_rdack_i_D1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gpio_xferack_i\,
      I1 => bus2ip_rnw,
      O => ip2bus_rdack_i
    );
ip2bus_wrack_i_D1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gpio_xferack_i\,
      I1 => bus2ip_rnw,
      O => ip2bus_wrack_i_D1_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_pmod_bridge_0_0 is
  port (
    in_bottom_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in0_I : out STD_LOGIC;
    in1_I : out STD_LOGIC;
    in2_I : out STD_LOGIC;
    in3_I : out STD_LOGIC;
    in0_O : in STD_LOGIC;
    in1_O : in STD_LOGIC;
    in2_O : in STD_LOGIC;
    in3_O : in STD_LOGIC;
    in0_T : in STD_LOGIC;
    in1_T : in STD_LOGIC;
    in2_T : in STD_LOGIC;
    in3_T : in STD_LOGIC;
    out0_I : in STD_LOGIC;
    out1_I : in STD_LOGIC;
    out2_I : in STD_LOGIC;
    out3_I : in STD_LOGIC;
    out4_I : in STD_LOGIC;
    out5_I : in STD_LOGIC;
    out6_I : in STD_LOGIC;
    out7_I : in STD_LOGIC;
    out0_O : out STD_LOGIC;
    out1_O : out STD_LOGIC;
    out2_O : out STD_LOGIC;
    out3_O : out STD_LOGIC;
    out4_O : out STD_LOGIC;
    out5_O : out STD_LOGIC;
    out6_O : out STD_LOGIC;
    out7_O : out STD_LOGIC;
    out0_T : out STD_LOGIC;
    out1_T : out STD_LOGIC;
    out2_T : out STD_LOGIC;
    out3_T : out STD_LOGIC;
    out4_T : out STD_LOGIC;
    out5_T : out STD_LOGIC;
    out6_T : out STD_LOGIC;
    out7_T : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_pmod_bridge_0_0 : entity is "PmodGYRO_pmod_bridge_0_0,pmod_concat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_pmod_bridge_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_pmod_bridge_0_0 : entity is "PmodGYRO_pmod_bridge_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_pmod_bridge_0_0 : entity is "pmod_concat,Vivado 2017.1_sdx";
end Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_pmod_bridge_0_0;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_pmod_bridge_0_0 is
  signal NLW_inst_in4_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in5_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in6_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in7_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_in_top_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute Bottom_Row_Interface : string;
  attribute Bottom_Row_Interface of inst : label is "GPIO";
  attribute Top_Row_Interface : string;
  attribute Top_Row_Interface of inst : label is "SPI";
begin
inst: entity work.Arty_Z7_20_PmodGYRO_0_0_pmod_concat
     port map (
      in0_I => in0_I,
      in0_O => in0_O,
      in0_T => in0_T,
      in1_I => in1_I,
      in1_O => in1_O,
      in1_T => in1_T,
      in2_I => in2_I,
      in2_O => in2_O,
      in2_T => in2_T,
      in3_I => in3_I,
      in3_O => in3_O,
      in3_T => in3_T,
      in4_I => NLW_inst_in4_I_UNCONNECTED,
      in4_O => '1',
      in4_T => '1',
      in5_I => NLW_inst_in5_I_UNCONNECTED,
      in5_O => '1',
      in5_T => '1',
      in6_I => NLW_inst_in6_I_UNCONNECTED,
      in6_O => '1',
      in6_T => '1',
      in7_I => NLW_inst_in7_I_UNCONNECTED,
      in7_O => '1',
      in7_T => '1',
      in_bottom_bus_I(3 downto 0) => in_bottom_bus_I(3 downto 0),
      in_bottom_bus_O(3 downto 0) => in_bottom_bus_O(3 downto 0),
      in_bottom_bus_T(3 downto 0) => in_bottom_bus_T(3 downto 0),
      in_bottom_i2c_gpio_bus_I(1 downto 0) => NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_bottom_i2c_gpio_bus_O(1 downto 0) => B"01",
      in_bottom_i2c_gpio_bus_T(1 downto 0) => B"01",
      in_bottom_uart_gpio_bus_I(1 downto 0) => NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_bottom_uart_gpio_bus_O(1 downto 0) => B"01",
      in_bottom_uart_gpio_bus_T(1 downto 0) => B"01",
      in_top_bus_I(3 downto 0) => NLW_inst_in_top_bus_I_UNCONNECTED(3 downto 0),
      in_top_bus_O(3 downto 0) => B"0000",
      in_top_bus_T(3 downto 0) => B"0000",
      in_top_i2c_gpio_bus_I(1 downto 0) => NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_top_i2c_gpio_bus_O(1 downto 0) => B"01",
      in_top_i2c_gpio_bus_T(1 downto 0) => B"01",
      in_top_uart_gpio_bus_I(1 downto 0) => NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_top_uart_gpio_bus_O(1 downto 0) => B"01",
      in_top_uart_gpio_bus_T(1 downto 0) => B"01",
      out0_I => out0_I,
      out0_O => out0_O,
      out0_T => out0_T,
      out1_I => out1_I,
      out1_O => out1_O,
      out1_T => out1_T,
      out2_I => out2_I,
      out2_O => out2_O,
      out2_T => out2_T,
      out3_I => out3_I,
      out3_O => out3_O,
      out3_T => out3_T,
      out4_I => out4_I,
      out4_O => out4_O,
      out4_T => out4_T,
      out5_I => out5_I,
      out5_O => out5_O,
      out5_T => out5_T,
      out6_I => out6_I,
      out6_O => out6_O,
      out6_T => out6_T,
      out7_I => out7_I,
      out7_O => out7_O,
      out7_T => out7_T
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_address_decoder__parameterized0\ is
  port (
    p_3_in : out STD_LOGIC;
    Receive_ip2bus_error_reg : out STD_LOGIC;
    Transmit_ip2bus_error_reg : out STD_LOGIC;
    \SPICR_data_int_reg[0]\ : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1_reg : out STD_LOGIC;
    AXI_LITE_SPI_arready : out STD_LOGIC;
    AXI_LITE_SPI_wready : out STD_LOGIC;
    \icount_out_reg[1]\ : out STD_LOGIC;
    SPICR_data_int_reg0 : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 0 to 0 );
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    modf_reg : out STD_LOGIC;
    Transmit_ip2bus_error0 : out STD_LOGIC;
    IP2Bus_Error_1 : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\ : out STD_LOGIC;
    wr_ce_or_reduce_core_cmb : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : out STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bus2ip_rnw_i_reg : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    p_16_out : in STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    is_write_reg : in STD_LOGIC;
    p_15_out : in STD_LOGIC;
    is_read : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rx_fifo_count : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    p_1_in35_in : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ : in STD_LOGIC;
    p_1_in32_in : in STD_LOGIC;
    p_1_in29_in : in STD_LOGIC;
    p_1_in26_in : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    p_1_in20_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    \goreg_dm.dout_i_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    scndry_out : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ : in STD_LOGIC;
    modf_reg_0 : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\ : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    tx_fifo_count : in STD_LOGIC_VECTOR ( 0 to 0 );
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ : in STD_LOGIC;
    \SPICR_data_int_reg[0]_0\ : in STD_LOGIC;
    bus2ip_rnw_i_reg_0 : in STD_LOGIC;
    Receive_ip2bus_error_reg_0 : in STD_LOGIC;
    p_4_in : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_address_decoder__parameterized0\ : entity is "address_decoder";
end \Arty_Z7_20_PmodGYRO_0_0_address_decoder__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_address_decoder__parameterized0\ is
  signal \^axi_lite_spi_arready\ : STD_LOGIC;
  signal \^axi_lite_spi_wready\ : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_3_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_5_n_0\ : STD_LOGIC;
  signal \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[31]\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\ : STD_LOGIC;
  signal \^receive_ip2bus_error_reg\ : STD_LOGIC;
  signal \^spicr_data_int_reg[0]\ : STD_LOGIC;
  signal \^transmit_ip2bus_error_reg\ : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^gpregsm1.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal intr2bus_wrack_i_2_n_0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 : STD_LOGIC;
  signal \^ipif_glbl_irpt_enable_reg_reg\ : STD_LOGIC;
  signal \^modf_reg\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_15_out_1 : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_29_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_30_in : STD_LOGIC;
  signal p_31_in : STD_LOGIC;
  signal p_32_in : STD_LOGIC;
  signal \^p_3_in\ : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_in_0 : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of Transmit_ip2bus_error_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gc1.count_d1[3]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \icount_out[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of intr2bus_wrack_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of intr2bus_wrack_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ip2Bus_RdAck_intr_reg_hole_d1_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ip2Bus_RdAck_intr_reg_hole_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ip2Bus_WrAck_intr_reg_hole_d1_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ip2Bus_WrAck_intr_reg_hole_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of modf_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of reset_trig_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sw_rst_cond_d1_i_1 : label is "soft_lutpair9";
begin
  AXI_LITE_SPI_arready <= \^axi_lite_spi_arready\;
  AXI_LITE_SPI_wready <= \^axi_lite_spi_wready\;
  \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ <= \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[31]\;
  Receive_ip2bus_error_reg <= \^receive_ip2bus_error_reg\;
  \SPICR_data_int_reg[0]\ <= \^spicr_data_int_reg[0]\;
  Transmit_ip2bus_error_reg <= \^transmit_ip2bus_error_reg\;
  \gpregsm1.curr_fwft_state_reg[1]\ <= \^gpregsm1.curr_fwft_state_reg[1]\;
  ipif_glbl_irpt_enable_reg_reg <= \^ipif_glbl_irpt_enable_reg_reg\;
  modf_reg <= \^modf_reg\;
  p_3_in <= \^p_3_in\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => Q,
      I2 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^ipif_glbl_irpt_enable_reg_reg\,
      R => '0'
    );
\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^spicr_data_int_reg[0]\,
      I1 => \^ipif_glbl_irpt_enable_reg_reg\,
      I2 => ip2Bus_WrAck_core_reg_1,
      O => SPICR_data_int_reg0
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => p_32_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_5_out,
      Q => p_22_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_4_out,
      Q => p_21_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_3_out,
      Q => p_20_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_2_out,
      Q => p_19_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_1_out,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(3),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(0),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(3),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[6]\(4),
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(1),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[6]\(4),
      O => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(3),
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      I4 => \bus2ip_addr_i_reg[6]\(0),
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_14_out,
      Q => p_31_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(0),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(3),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[6]\(4),
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(2),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[6]\(4),
      O => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(3),
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      I4 => \bus2ip_addr_i_reg[6]\(0),
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => p_15_out_1
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_15_out_1,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(0),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\,
      Q => \^spicr_data_int_reg[0]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(1),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => Q,
      O => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => \^transmit_ip2bus_error_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(4),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[6]\(2),
      I4 => \bus2ip_addr_i_reg[6]\(0),
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\,
      Q => \^receive_ip2bus_error_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(0),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(4),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\,
      Q => p_4_in_0,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(2),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => Q,
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\,
      Q => \^p_3_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_13_out,
      Q => p_30_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^axi_lite_spi_arready\,
      I1 => s_axi_aresetn,
      I2 => \^axi_lite_spi_wready\,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[6]\(4),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[6]\(2),
      I4 => \bus2ip_addr_i_reg[6]\(0),
      I5 => \bus2ip_addr_i_reg[6]\(1),
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2_n_0\,
      Q => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_12_out,
      Q => p_29_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_11_out,
      Q => p_28_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_10_out,
      Q => p_27_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_9_out,
      Q => p_26_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_8_out,
      Q => p_25_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_7_out,
      Q => p_24_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_6_out,
      Q => p_23_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => p_24_in,
      I1 => intr2bus_wrack_i_2_n_0,
      I2 => irpt_wrack_d1,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => p_24_in,
      I1 => p_22_in,
      I2 => p_25_in,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0\,
      I4 => ipif_glbl_irpt_enable_reg,
      O => D(10)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => s_axi_wstrb(0),
      I2 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \SPICR_data_int_reg[0]_0\,
      I1 => \^ipif_glbl_irpt_enable_reg_reg\,
      I2 => \^spicr_data_int_reg[0]\,
      O => D(9)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\(8),
      I2 => \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0\,
      I4 => p_1_in14_in,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\,
      O => D(8)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFFFFF"
    )
        port map (
      I0 => p_24_in,
      I1 => p_22_in,
      I2 => bus2ip_rnw_i_reg,
      I3 => s_axi_wstrb(0),
      I4 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^spicr_data_int_reg[0]\,
      I1 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg_reg\,
      I1 => s_axi_wstrb(0),
      I2 => bus2ip_rnw_i_reg,
      I3 => p_24_in,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\(7),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0\,
      I3 => p_1_in17_in,
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\,
      O => D(7)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800880088008800"
    )
        port map (
      I0 => \^spicr_data_int_reg[0]\,
      I1 => \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\,
      I2 => \^receive_ip2bus_error_reg\,
      I3 => \^ipif_glbl_irpt_enable_reg_reg\,
      I4 => ip2Bus_RdAck_core_reg,
      I5 => \goreg_dm.dout_i_reg[7]\(6),
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\(6),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0\,
      I3 => p_1_in20_in,
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\,
      O => D(6)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80000080800000"
    )
        port map (
      I0 => \^receive_ip2bus_error_reg\,
      I1 => ip2Bus_RdAck_core_reg,
      I2 => \goreg_dm.dout_i_reg[7]\(5),
      I3 => \^spicr_data_int_reg[0]\,
      I4 => \^ipif_glbl_irpt_enable_reg_reg\,
      I5 => spicr_6_rxfifo_rst_frm_axi_clk,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\(5),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0\,
      I3 => p_1_in23_in,
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\,
      O => D(5)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^gpregsm1.curr_fwft_state_reg[1]\,
      I1 => \goreg_dm.dout_i_reg[7]\(4),
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\,
      I3 => \^modf_reg\,
      I4 => spicr_5_txfifo_rst_frm_axi_clk,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\(4),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0\,
      I3 => p_1_in26_in,
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\,
      O => D(4)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^gpregsm1.curr_fwft_state_reg[1]\,
      I1 => \goreg_dm.dout_i_reg[7]\(3),
      I2 => \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0\,
      I4 => modf_reg_0,
      I5 => \^modf_reg\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\(3),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3_n_0\,
      I4 => p_1_in29_in,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\,
      O => D(3)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F44444444444444"
    )
        port map (
      I0 => \^gpregsm1.curr_fwft_state_reg[1]\,
      I1 => \goreg_dm.dout_i_reg[7]\(2),
      I2 => empty_fwft_i_reg,
      I3 => p_2_in,
      I4 => \^ipif_glbl_irpt_enable_reg_reg\,
      I5 => rx_fifo_count(1),
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4_n_0\,
      I1 => tx_fifo_count(0),
      I2 => Tx_FIFO_Full_int,
      I3 => \^modf_reg\,
      I4 => \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\,
      I1 => \^p_3_in\,
      I2 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\(2),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0\,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      I4 => p_1_in32_in,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\,
      O => D(2)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^gpregsm1.curr_fwft_state_reg[1]\,
      I1 => \goreg_dm.dout_i_reg[7]\(1),
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\,
      I3 => \^modf_reg\,
      I4 => spicr_2_mst_n_slv_frm_axi_clk,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\(1),
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_3_n_0\,
      I4 => p_1_in35_in,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\,
      O => D(1)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^gpregsm1.curr_fwft_state_reg[1]\,
      I1 => \goreg_dm.dout_i_reg[7]\(0),
      I2 => scndry_out,
      I3 => \^modf_reg\,
      I4 => \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_3_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4FFF4F4"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\(0),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2_n_0\,
      I3 => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[31]\,
      I4 => rx_fifo_count(0),
      I5 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      O => D(0)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4444444"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4_n_0\,
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      I2 => \^ipif_glbl_irpt_enable_reg_reg\,
      I3 => prmry_in,
      I4 => p_4_in_0,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_5_n_0\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => empty_fwft_i_reg,
      I1 => p_2_in,
      I2 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => \^legacy_md_ip2bus_data_gen.ip2bus_data_reg[31]\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA80000A8A80000"
    )
        port map (
      I0 => p_7_in,
      I1 => empty_fwft_i_reg,
      I2 => rx_fifo_empty_i,
      I3 => \^spicr_data_int_reg[0]\,
      I4 => \^ipif_glbl_irpt_enable_reg_reg\,
      I5 => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_5_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF04"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg_reg\,
      I1 => p_16_in,
      I2 => bus2ip_rnw_i_reg_0,
      I3 => Receive_ip2bus_error_reg_0,
      I4 => p_4_in,
      O => IP2Bus_Error_1
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => bus2ip_rnw_i_reg_0,
      I1 => p_16_in,
      I2 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF75"
    )
        port map (
      I0 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      I1 => \out\,
      I2 => \^transmit_ip2bus_error_reg\,
      I3 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\,
      I4 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => wr_ce_or_reduce_core_cmb
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\,
      I1 => p_11_in,
      I2 => p_4_in_0,
      I3 => p_10_in,
      I4 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\,
      O => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_7_in,
      I1 => \^spicr_data_int_reg[0]\,
      I2 => \^p_3_in\,
      I3 => p_2_in,
      O => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_13_in,
      I1 => \^receive_ip2bus_error_reg\,
      I2 => p_15_in,
      I3 => p_14_in,
      I4 => p_12_in,
      I5 => p_9_in,
      O => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055551511"
    )
        port map (
      I0 => ip2Bus_WrAck_core_reg_d1,
      I1 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      I2 => \out\,
      I3 => \^transmit_ip2bus_error_reg\,
      I4 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\,
      I5 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg_reg\,
      I1 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\,
      I2 => p_16_in,
      I3 => \^transmit_ip2bus_error_reg\,
      I4 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      O => rd_ce_or_reduce_core_cmb
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\
     port map (
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0)
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_5_out => p_5_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized15\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_4_out => p_4_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized16\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_3_out => p_3_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[13].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized17\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_2_out => p_2_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[14].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized18\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_1_out => p_1_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_14_out => p_14_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_13_out => p_13_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[3].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_12_out => p_12_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_11_out => p_11_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_10_out => p_10_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_9_out => p_9_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_8_out => p_8_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_7_out => p_7_out
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      p_6_out => p_6_out
    );
\MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\
     port map (
      \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\ => \MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0)
    );
\MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27\
     port map (
      \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\ => \MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0)
    );
\MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_49\
     port map (
      \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\ => \MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0)
    );
\MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized27_50\
     port map (
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\ => \MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0\,
      Q => Q,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0)
    );
\SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^spicr_data_int_reg[0]\,
      I1 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => bus2ip_wrce_int(0)
    );
\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_4_in_0,
      I2 => \^ipif_glbl_irpt_enable_reg_reg\,
      I3 => ip2Bus_WrAck_core_reg_1,
      I4 => prmry_in,
      O => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\
    );
Transmit_ip2bus_error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^transmit_ip2bus_error_reg\,
      I1 => Tx_FIFO_Full_int,
      I2 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => Transmit_ip2bus_error0
    );
\gc1.count_d1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^receive_ip2bus_error_reg\,
      I1 => \^ipif_glbl_irpt_enable_reg_reg\,
      I2 => ip2Bus_RdAck_core_reg,
      O => \^gpregsm1.curr_fwft_state_reg[1]\
    );
\icount_out[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg_reg\,
      I1 => ip2Bus_WrAck_core_reg_1,
      I2 => \^transmit_ip2bus_error_reg\,
      I3 => \out\,
      O => \icount_out_reg[1]\
    );
intr2bus_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05050504"
    )
        port map (
      I0 => irpt_rdack_d1,
      I1 => p_25_in,
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0\,
      I3 => p_22_in,
      I4 => p_24_in,
      O => intr2bus_rdack0
    );
intr2bus_wrack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05050504"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_22_in,
      I2 => intr2bus_wrack_i_2_n_0,
      I3 => p_24_in,
      I4 => p_25_in,
      O => interrupt_wrce_strb
    );
intr2bus_wrack_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg_reg\,
      I1 => bus2ip_rnw_i_reg,
      I2 => s_axi_wstrb(0),
      O => intr2bus_wrack_i_2_n_0
    );
ip2Bus_RdAck_intr_reg_hole_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg_reg\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      O => intr_controller_rd_ce_or_reduce
    );
ip2Bus_RdAck_intr_reg_hole_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      I1 => \^ipif_glbl_irpt_enable_reg_reg\,
      I2 => ip2Bus_RdAck_intr_reg_hole_d1,
      O => ip2Bus_RdAck_intr_reg_hole0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg_reg\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      O => ip2Bus_WrAck_intr_reg_hole_d1_reg
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0,
      I2 => p_27_in,
      I3 => p_23_in,
      I4 => p_26_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_29_in,
      I1 => p_32_in,
      I2 => p_31_in,
      I3 => p_21_in,
      I4 => p_18_in,
      I5 => p_20_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_28_in,
      I1 => p_17_in,
      I2 => p_19_in,
      I3 => p_30_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0
    );
ip2Bus_WrAck_intr_reg_hole_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      I1 => \^ipif_glbl_irpt_enable_reg_reg\,
      I2 => ip2Bus_WrAck_intr_reg_hole_d1,
      O => ip2Bus_WrAck_intr_reg_hole0
    );
\ip_irpt_enable_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => p_22_in,
      I1 => s_axi_wstrb(0),
      I2 => bus2ip_rnw_i_reg,
      I3 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => E(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBBF00008880"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => p_25_in,
      I2 => s_axi_wstrb(0),
      I3 => bus2ip_rnw_i_reg,
      I4 => \^ipif_glbl_irpt_enable_reg_reg\,
      I5 => ipif_glbl_irpt_enable_reg,
      O => ipif_glbl_irpt_enable_reg_reg_0
    );
irpt_rdack_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC0CCC0CCC08880"
    )
        port map (
      I0 => p_25_in,
      I1 => \^ipif_glbl_irpt_enable_reg_reg\,
      I2 => s_axi_wstrb(0),
      I3 => bus2ip_rnw_i_reg,
      I4 => p_22_in,
      I5 => p_24_in,
      O => irpt_rdack
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3330333033302220"
    )
        port map (
      I0 => p_22_in,
      I1 => \^ipif_glbl_irpt_enable_reg_reg\,
      I2 => bus2ip_rnw_i_reg,
      I3 => s_axi_wstrb(0),
      I4 => p_24_in,
      I5 => p_25_in,
      O => irpt_wrack
    );
modf_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg_reg\,
      I1 => p_7_in,
      O => \^modf_reg\
    );
reset_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg_reg\,
      I1 => p_16_in,
      I2 => bus2ip_rnw_i_reg_0,
      I3 => sw_rst_cond_d1,
      O => reset_trig0
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => p_15_out,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(1),
      I3 => is_read,
      I4 => s_axi_wready_INST_0_i_1_n_0,
      O => \^axi_lite_spi_arready\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => p_16_out,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(1),
      I3 => is_write_reg,
      I4 => s_axi_wready_INST_0_i_1_n_0,
      O => \^axi_lite_spi_wready\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(4),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(2),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(5),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(3),
      O => s_axi_wready_INST_0_i_1_n_0
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bus2ip_rnw_i_reg_0,
      I1 => p_16_in,
      I2 => \^ipif_glbl_irpt_enable_reg_reg\,
      O => sw_rst_cond
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_cross_clk_sync_fifo_1 is
  port (
    \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_1_CDC_0\ : out STD_LOGIC;
    spiXfer_done_d3 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : out STD_LOGIC;
    Allow_Slave_MODF_Strobe_reg : out STD_LOGIC;
    transfer_start_reg : out STD_LOGIC;
    Slave_MODF_strobe_reg : out STD_LOGIC;
    transfer_start_reg_0 : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]_0\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    Tx_FIFO_Empty_intr : out STD_LOGIC;
    tx_occ_msb : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[8]\ : out STD_LOGIC;
    \icount_out_reg[1]\ : out STD_LOGIC;
    spiXfer_done_to_axi_1 : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\ : out STD_LOGIC;
    \SS_O_reg[0]\ : out STD_LOGIC;
    \SS_O_reg[0]_0\ : out STD_LOGIC;
    modf_reg : out STD_LOGIC;
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\ : out STD_LOGIC;
    R : out STD_LOGIC;
    Slave_MODF_strobe0 : out STD_LOGIC;
    MODF_strobe0 : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]_0\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.sck_o_int_reg\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.sck_o_int_reg_0\ : out STD_LOGIC;
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ : out STD_LOGIC;
    \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]_0\ : out STD_LOGIC;
    rx_fifo_reset : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    SPI_TRISTATE_CONTROL_V : out STD_LOGIC;
    dtr_underrun_d1_reg : out STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    p_3_out : in STD_LOGIC;
    \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg_0\ : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0\ : in STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : in STD_LOGIC;
    Allow_Slave_MODF_Strobe : in STD_LOGIC;
    \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\ : in STD_LOGIC;
    Rx_FIFO_Full_int : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    tx_occ_msb_4 : in STD_LOGIC;
    tx_FIFO_Occpncy_MSB_d1 : in STD_LOGIC;
    p_1_in20_in : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    p_1_in35_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    tx_fifo_count_d2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    spiXfer_done_to_axi_d1 : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_sig : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_flag : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    tx_fifo_count : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_fwft_i_reg_0 : in STD_LOGIC;
    rx_fifo_count : in STD_LOGIC_VECTOR ( 1 downto 0 );
    transfer_start_d1 : in STD_LOGIC;
    modf_reg_0 : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    Tx_FIFO_Full_i : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : in STD_LOGIC;
    modf_strobe_int : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    drr_Overrun_int : in STD_LOGIC;
    Allow_MODF_Strobe : in STD_LOGIC;
    SPIXfer_done_int_d1_reg : in STD_LOGIC;
    \goreg_dm.dout_i_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    stop_clock_reg : in STD_LOGIC;
    serial_dout_int : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC;
    SPISEL_sync : in STD_LOGIC;
    spisel_d1_reg : in STD_LOGIC;
    \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\ : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ : in STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ : in STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ : in STD_LOGIC;
    \SPICR_data_int_reg[0]\ : in STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : in STD_LOGIC;
    spicr_bits_7_8_frm_axi_clk : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_cross_clk_sync_fifo_1 : entity is "cross_clk_sync_fifo_1";
end Arty_Z7_20_PmodGYRO_0_0_cross_clk_sync_fifo_1;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_cross_clk_sync_fifo_1 is
  signal \LOGIC_GENERATION_CDC.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\ : STD_LOGIC;
  signal \^logic_generation_cdc.spisel_pulse_s2ax_1_cdc_0\ : STD_LOGIC;
  signal \^other_ratio_generate.shift_reg_reg[7]_0\ : STD_LOGIC;
  signal \^other_ratio_generate.rx_shft_reg_s_reg[7]_0\ : STD_LOGIC;
  signal \^ratio_not_equal_4_generate.sck_o_nq_4_no_startup_used.sck_o_ne_4_fdre_inst\ : STD_LOGIC;
  signal SPICR_RX_FIFO_Rst_en_d1 : STD_LOGIC;
  signal SPICR_RX_FIFO_Rst_en_d2 : STD_LOGIC;
  signal \^ss_o_reg[0]_0\ : STD_LOGIC;
  signal \^slave_modf_strobe_reg\ : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d2 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d3 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_int_2 : STD_LOGIC;
  signal modf_strobe_cdc_from_spi_d2 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of modf_strobe_cdc_from_spi_d2 : signal is "true";
  signal modf_strobe_cdc_from_spi_d3 : STD_LOGIC;
  signal modf_strobe_cdc_from_spi_int_2 : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^prmry_in\ : STD_LOGIC;
  signal reset_RcFIFO_ptr_cdc_from_axi_d1 : STD_LOGIC;
  signal reset_RcFIFO_ptr_cdc_from_axi_d2 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  signal slave_MODF_strobe_cdc_from_spi_d2 : STD_LOGIC;
  attribute RTL_KEEP of slave_MODF_strobe_cdc_from_spi_d2 : signal is "true";
  signal slave_MODF_strobe_cdc_from_spi_d3 : STD_LOGIC;
  signal spiXfer_done_cdc_from_spi_int_2 : STD_LOGIC;
  signal \^spixfer_done_d3\ : STD_LOGIC;
  signal spicr_7_ss_to_spi_clk : STD_LOGIC;
  signal spicr_8_tr_inhibit_to_spi_clk : STD_LOGIC;
  signal spicr_bits_7_8_to_spi_clk : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spisel_pulse_cdc_from_spi_d1 : STD_LOGIC;
  attribute RTL_KEEP of spisel_pulse_cdc_from_spi_d1 : signal is "true";
  signal spisel_pulse_cdc_from_spi_d2 : STD_LOGIC;
  attribute RTL_KEEP of spisel_pulse_cdc_from_spi_d2 : signal is "true";
  signal spisel_pulse_cdc_from_spi_d3 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d4 : STD_LOGIC;
  signal sr_3_modf_to_spi_clk : STD_LOGIC;
  signal \^transfer_start_reg\ : STD_LOGIC;
  signal NLW_i_0_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_3_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_4_O_UNCONNECTED : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_CDC.RX_FIFO_RST_AX2S_1_CDC_1\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \LOGIC_GENERATION_CDC.RX_FIFO_RST_AX2S_1_CDC_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_CDC.RX_FIFO_RST_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_CDC.RX_FIFO_RST_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_3\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_4\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_4\ : label is "PRIMITIVE";
begin
  \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_1_CDC_0\ <= \^logic_generation_cdc.spisel_pulse_s2ax_1_cdc_0\;
  \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]_0\ <= \^other_ratio_generate.shift_reg_reg[7]_0\;
  \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]_0\ <= \^other_ratio_generate.rx_shft_reg_s_reg[7]_0\;
  \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ <= \^ratio_not_equal_4_generate.sck_o_nq_4_no_startup_used.sck_o_ne_4_fdre_inst\;
  \SS_O_reg[0]_0\ <= \^ss_o_reg[0]_0\;
  Slave_MODF_strobe_reg <= \^slave_modf_strobe_reg\;
  prmry_in <= \^prmry_in\;
  scndry_out <= \^scndry_out\;
  spiXfer_done_d3 <= \^spixfer_done_d3\;
  transfer_start_reg <= \^transfer_start_reg\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6F66F6"
    )
        port map (
      I0 => modf_strobe_cdc_from_spi_d3,
      I1 => modf_strobe_cdc_from_spi_d2,
      I2 => s_axi_wdata(0),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      I4 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6F66F6"
    )
        port map (
      I0 => slave_MODF_strobe_cdc_from_spi_d3,
      I1 => slave_MODF_strobe_cdc_from_spi_d2,
      I2 => s_axi_wdata(1),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      I4 => p_1_in35_in,
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6F66F6"
    )
        port map (
      I0 => spisel_pulse_cdc_from_spi_d3,
      I1 => spisel_pulse_cdc_from_spi_d4,
      I2 => s_axi_wdata(4),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      I4 => p_1_in17_in,
      O => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\
    );
\LOGIC_GENERATION_CDC.DRR_OVERRUN_S2AX_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0\
     port map (
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\,
      drr_Overrun_int_cdc_from_spi_d3 => drr_Overrun_int_cdc_from_spi_d3,
      p_1_in23_in => p_1_in23_in,
      prmry_in => drr_Overrun_int_cdc_from_spi_int_2,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(2),
      scndry_out => drr_Overrun_int_cdc_from_spi_d2
    );
\LOGIC_GENERATION_CDC.DTR_UNDERRUN_S2AX_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_32\
     port map (
      \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\ => \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\,
      dtr_underrun_d1_reg => dtr_underrun_d1_reg,
      s_axi_aclk => s_axi_aclk
    );
\LOGIC_GENERATION_CDC.MODF_STROBE_S2AX_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_33\
     port map (
      prmry_in => modf_strobe_cdc_from_spi_int_2,
      s_axi_aclk => s_axi_aclk,
      scndry_out => modf_strobe_cdc_from_spi_d2
    );
\LOGIC_GENERATION_CDC.RX_FIFO_RST_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized2\
     port map (
      SPICR_RX_FIFO_Rst_en_d1 => SPICR_RX_FIFO_Rst_en_d1,
      SPICR_RX_FIFO_Rst_en_d2 => SPICR_RX_FIFO_Rst_en_d2,
      ext_spi_clk => ext_spi_clk
    );
\LOGIC_GENERATION_CDC.RX_FIFO_RST_AX2S_1_CDC_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_RX_FIFO_Rst_en_d2,
      Q => reset_RcFIFO_ptr_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_CDC.RX_FIFO_RST_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => reset_RcFIFO_ptr_cdc_from_axi_d1,
      Q => reset_RcFIFO_ptr_cdc_from_axi_d2,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_CDC.SLV_MODF_STRB_S2AX_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_34\
     port map (
      prmry_in => \^prmry_in\,
      s_axi_aclk => s_axi_aclk,
      scndry_out => slave_MODF_strobe_cdc_from_spi_d2
    );
\LOGIC_GENERATION_CDC.SPICR_0_LOOP_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1\
     port map (
      \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ => \^other_ratio_generate.shift_reg_reg[7]_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\ => \^ss_o_reg[0]_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2\ => \^transfer_start_reg\,
      \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg\ => \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg\,
      \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\(0) => \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\(0),
      \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\(0) => \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\(0),
      SPIXfer_done_int_d1_reg => SPIXfer_done_int_d1_reg,
      ext_spi_clk => ext_spi_clk,
      \goreg_dm.dout_i_reg[7]\(1 downto 0) => \goreg_dm.dout_i_reg[7]\(1 downto 0),
      io0_i_sync => io0_i_sync,
      io1_i_sync => io1_i_sync,
      \out\ => \out\,
      scndry_out => \^other_ratio_generate.rx_shft_reg_s_reg[7]_0\,
      serial_dout_int => serial_dout_int,
      spiXfer_done_int => spiXfer_done_int,
      stop_clock_reg => stop_clock_reg
    );
\LOGIC_GENERATION_CDC.SPICR_1_SPE_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_35\
     port map (
      Allow_Slave_MODF_Strobe => Allow_Slave_MODF_Strobe,
      \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ => \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ => \^transfer_start_reg\,
      Slave_MODF_strobe0 => Slave_MODF_strobe0,
      ext_spi_clk => ext_spi_clk,
      scndry_out => \^slave_modf_strobe_reg\
    );
\LOGIC_GENERATION_CDC.SPICR_2_MST_N_SLV_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_36\
     port map (
      Allow_MODF_Strobe => Allow_MODF_Strobe,
      Allow_Slave_MODF_Strobe => Allow_Slave_MODF_Strobe,
      Allow_Slave_MODF_Strobe_reg => Allow_Slave_MODF_Strobe_reg,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ => \^slave_modf_strobe_reg\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\ => sr_3_modf_to_spi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2\ => spicr_8_tr_inhibit_to_spi_clk,
      \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\ => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\,
      MODF_strobe0 => MODF_strobe0,
      R => R,
      \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg\ => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg\,
      Rst_to_spi => Rst_to_spi,
      ext_spi_clk => ext_spi_clk,
      \out\ => \out\,
      scndry_out => \^transfer_start_reg\,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      transfer_start_reg => transfer_start_reg_0
    );
\LOGIC_GENERATION_CDC.SPICR_3_CPOL_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_37\
     port map (
      \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ => \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\,
      \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ => \^ratio_not_equal_4_generate.sck_o_nq_4_no_startup_used.sck_o_ne_4_fdre_inst\,
      ext_spi_clk => ext_spi_clk
    );
\LOGIC_GENERATION_CDC.SPICR_4_CPHA_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_38\
     port map (
      \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ => \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ => \^ratio_not_equal_4_generate.sck_o_nq_4_no_startup_used.sck_o_ne_4_fdre_inst\,
      \OTHER_RATIO_GENERATE.sck_o_int_reg\ => \OTHER_RATIO_GENERATE.sck_o_int_reg\,
      \OTHER_RATIO_GENERATE.sck_o_int_reg_0\ => \OTHER_RATIO_GENERATE.sck_o_int_reg_0\,
      ext_spi_clk => ext_spi_clk
    );
\LOGIC_GENERATION_CDC.SPICR_7_SS_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_39\
     port map (
      \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ => \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\,
      ext_spi_clk => ext_spi_clk,
      scndry_out => spicr_7_ss_to_spi_clk
    );
\LOGIC_GENERATION_CDC.SPICR_8_TR_INHIBIT_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_40\
     port map (
      \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ => \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\,
      ext_spi_clk => ext_spi_clk,
      scndry_out => spicr_8_tr_inhibit_to_spi_clk
    );
\LOGIC_GENERATION_CDC.SPICR_9_LSB_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_41\
     port map (
      \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\ => \^other_ratio_generate.shift_reg_reg[7]_0\,
      \SPICR_data_int_reg[0]\ => \SPICR_data_int_reg[0]\,
      ext_spi_clk => ext_spi_clk
    );
\LOGIC_GENERATION_CDC.SPICR_BITS_7_8_SYNC_GEN_CDC[0].SPICR_BITS_7_8_AX2S_1_CDC\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_42\
     port map (
      D_0 => D_0,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ => \^other_ratio_generate.rx_shft_reg_s_reg[7]_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\ => sr_3_modf_to_spi_clk,
      SPISEL_sync => SPISEL_sync,
      SPI_TRISTATE_CONTROL_V => SPI_TRISTATE_CONTROL_V,
      ext_spi_clk => ext_spi_clk,
      modf_strobe_int => modf_strobe_int,
      scndry_out => spicr_bits_7_8_to_spi_clk(0),
      spicr_bits_7_8_frm_axi_clk(0) => spicr_bits_7_8_frm_axi_clk(0)
    );
\LOGIC_GENERATION_CDC.SPICR_BITS_7_8_SYNC_GEN_CDC[1].SPICR_BITS_7_8_AX2S_1_CDC\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_43\
     port map (
      ext_spi_clk => ext_spi_clk,
      scndry_out => spicr_bits_7_8_to_spi_clk(0),
      spicr_bits_7_8_frm_axi_clk(0) => spicr_bits_7_8_frm_axi_clk(1)
    );
\LOGIC_GENERATION_CDC.SPICR_RX_FIFO_Rst_en_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => SPICR_RX_FIFO_Rst_en_d1,
      I1 => \RESET_FLOPS[15].RST_FLOPS\,
      I2 => bus2ip_reset_ipif_inverted,
      I3 => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      O => \LOGIC_GENERATION_CDC.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\
    );
\LOGIC_GENERATION_CDC.SPICR_RX_FIFO_Rst_en_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_CDC.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\,
      Q => SPICR_RX_FIFO_Rst_en_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_CDC.SPISEL_D1_REG_S2AX_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_44\
     port map (
      D(0) => D(0),
      \ip_irpt_enable_reg_reg[8]\ => \ip_irpt_enable_reg_reg[8]\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(5),
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spisel_d1_reg => spisel_d1_reg
    );
\LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^logic_generation_cdc.spisel_pulse_s2ax_1_cdc_0\,
      Q => spisel_pulse_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => spisel_pulse_cdc_from_spi_d1,
      Q => spisel_pulse_cdc_from_spi_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => spisel_pulse_cdc_from_spi_d2,
      Q => spisel_pulse_cdc_from_spi_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => spisel_pulse_cdc_from_spi_d3,
      Q => spisel_pulse_cdc_from_spi_d4,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_CDC.SPISSR_SYNC_GEN_CDC[0].SPISSR_AX2S_1_CDC\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_45\
     port map (
      \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\ => \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\,
      Rst_to_spi => Rst_to_spi,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      \SS_O_reg[0]\ => \SS_O_reg[0]\,
      \SS_O_reg[0]_0\ => \^ss_o_reg[0]_0\,
      ext_spi_clk => ext_spi_clk,
      scndry_out => spicr_7_ss_to_spi_clk,
      transfer_start_d1 => transfer_start_d1
    );
\LOGIC_GENERATION_CDC.SR_3_MODF_AX2S_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized1_46\
     port map (
      ext_spi_clk => ext_spi_clk,
      modf_reg => modf_reg_0,
      scndry_out => sr_3_modf_to_spi_clk
    );
\LOGIC_GENERATION_CDC.SYNC_SPIXFER_DONE_S2AX_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_47\
     port map (
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0\ => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0\,
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\ => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\,
      \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\ => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\,
      \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg\ => \^spixfer_done_d3\,
      \RESET_FLOPS[15].RST_FLOPS\ => \RESET_FLOPS[15].RST_FLOPS\,
      Rx_FIFO_Full_Fifo_d1_flag => Rx_FIFO_Full_Fifo_d1_flag,
      Rx_FIFO_Full_Fifo_d1_sig => Rx_FIFO_Full_Fifo_d1_sig,
      Rx_FIFO_Full_int => Rx_FIFO_Full_int,
      Tx_FIFO_Full_i => Tx_FIFO_Full_i,
      Tx_FIFO_Full_int => Tx_FIFO_Full_int,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      empty_fwft_i_reg => empty_fwft_i_reg,
      \icount_out_reg[1]\ => \icount_out_reg[1]\,
      \icount_out_reg[3]\ => \icount_out_reg[3]\,
      prmry_in => spiXfer_done_cdc_from_spi_int_2,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi_aclk => s_axi_aclk,
      scndry_out => \^scndry_out\,
      spiXfer_done_to_axi_1 => spiXfer_done_to_axi_1
    );
\LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_3_out,
      Q => \^prmry_in\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_CDC.TX_EMPT_4_SPISR_S2AX_1\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized0_48\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\,
      Q(0) => Q(0),
      Tx_FIFO_Empty_intr => Tx_FIFO_Empty_intr,
      empty_fwft_i_reg => empty_fwft_i_reg_0,
      \out\ => \out\,
      p_1_in20_in => p_1_in20_in,
      p_3_in => p_3_in,
      rx_fifo_count(1 downto 0) => rx_fifo_count(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(3),
      scndry_out => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]_0\,
      spiXfer_done_to_axi_d1 => spiXfer_done_to_axi_d1,
      tx_FIFO_Occpncy_MSB_d1 => tx_FIFO_Occpncy_MSB_d1,
      tx_fifo_count(2 downto 0) => tx_fifo_count(2 downto 0),
      tx_fifo_count_d2(3 downto 0) => tx_fifo_count_d2(3 downto 0),
      tx_occ_msb => tx_occ_msb,
      tx_occ_msb_4 => tx_occ_msb_4
    );
\LOGIC_GENERATION_CDC.drr_Overrun_int_cdc_from_spi_d3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => drr_Overrun_int_cdc_from_spi_d2,
      Q => drr_Overrun_int_cdc_from_spi_d3,
      R => '0'
    );
\LOGIC_GENERATION_CDC.drr_Overrun_int_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => drr_Overrun_int_cdc_from_spi_int_2,
      I1 => drr_Overrun_int,
      O => p_0_out
    );
\LOGIC_GENERATION_CDC.drr_Overrun_int_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_0_out,
      Q => drr_Overrun_int_cdc_from_spi_int_2,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => modf_strobe_cdc_from_spi_d2,
      Q => modf_strobe_cdc_from_spi_d3,
      R => '0'
    );
\LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => modf_strobe_cdc_from_spi_int_2,
      I1 => modf_strobe_int,
      O => p_2_out
    );
\LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_2_out,
      Q => modf_strobe_cdc_from_spi_int_2,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_CDC.slave_MODF_strobe_cdc_from_spi_d3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => slave_MODF_strobe_cdc_from_spi_d2,
      Q => slave_MODF_strobe_cdc_from_spi_d3,
      R => '0'
    );
\LOGIC_GENERATION_CDC.spiXfer_done_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spiXfer_done_cdc_from_spi_int_2,
      I1 => spiXfer_done_int,
      O => p_1_out
    );
\LOGIC_GENERATION_CDC.spiXfer_done_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_1_out,
      Q => spiXfer_done_cdc_from_spi_int_2,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_CDC.spiXfer_done_d3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^scndry_out\,
      Q => \^spixfer_done_d3\,
      R => '0'
    );
\LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg_0\,
      Q => \^logic_generation_cdc.spisel_pulse_s2ax_1_cdc_0\,
      R => Rst_to_spi
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_0_O_UNCONNECTED
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_1_O_UNCONNECTED
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_2_O_UNCONNECTED
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_3_O_UNCONNECTED
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_4_O_UNCONNECTED
    );
modf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BEBE00BE"
    )
        port map (
      I0 => modf_reg_0,
      I1 => modf_strobe_cdc_from_spi_d2,
      I2 => modf_strobe_cdc_from_spi_d3,
      I3 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      I4 => Bus_RNW_reg_reg,
      I5 => reset2ip_reset_int,
      O => modf_reg
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => reset_RcFIFO_ptr_cdc_from_axi_d1,
      I2 => reset_RcFIFO_ptr_cdc_from_axi_d2,
      O => rx_fifo_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_slave_attachment is
  port (
    bus2ip_rnw_i_reg_0 : out STD_LOGIC;
    \Not_Dual.gpio_OE_reg[0]\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    AXI_LITE_GPIO_rvalid : out STD_LOGIC;
    AXI_LITE_GPIO_bvalid : out STD_LOGIC;
    AXI_LITE_GPIO_arready : out STD_LOGIC;
    AXI_LITE_GPIO_wready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Not_Dual.gpio_Data_Out_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\ : out STD_LOGIC;
    Read_Reg_Rst : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    gpio_xferAck_Reg : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[28]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_slave_attachment : entity is "slave_attachment";
end Arty_Z7_20_PmodGYRO_0_0_slave_attachment;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_slave_attachment is
  signal \^axi_lite_gpio_arready\ : STD_LOGIC;
  signal \^axi_lite_gpio_bvalid\ : STD_LOGIC;
  signal \^axi_lite_gpio_rvalid\ : STD_LOGIC;
  signal \^axi_lite_gpio_wready\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^not_dual.gpio_oe_reg[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 0 to 5 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal bus2ip_rnw_i06_out : STD_LOGIC;
  signal \^bus2ip_rnw_i_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_1 : label is "soft_lutpair1";
begin
  AXI_LITE_GPIO_arready <= \^axi_lite_gpio_arready\;
  AXI_LITE_GPIO_bvalid <= \^axi_lite_gpio_bvalid\;
  AXI_LITE_GPIO_rvalid <= \^axi_lite_gpio_rvalid\;
  AXI_LITE_GPIO_wready <= \^axi_lite_gpio_wready\;
  \Not_Dual.gpio_OE_reg[0]\ <= \^not_dual.gpio_oe_reg[0]\;
  Q(0) <= \^q\(0);
  bus2ip_rnw_i_reg_0 <= \^bus2ip_rnw_i_reg_0\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => clear
    );
I_DECODER: entity work.Arty_Z7_20_PmodGYRO_0_0_address_decoder
     port map (
      AXI_LITE_GPIO_arready => \^axi_lite_gpio_arready\,
      AXI_LITE_GPIO_wready => \^axi_lite_gpio_wready\,
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      GPIO_xferAck_i => GPIO_xferAck_i,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\ => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\,
      \Not_Dual.gpio_Data_Out_reg[0]\(0) => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      Q(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3 downto 0),
      Read_Reg_Rst => Read_Reg_Rst,
      \bus2ip_addr_i_reg[8]\(2) => bus2ip_addr(0),
      \bus2ip_addr_i_reg[8]\(1) => bus2ip_addr(5),
      \bus2ip_addr_i_reg[8]\(0) => \^q\(0),
      bus2ip_rnw_i_reg => \^not_dual.gpio_oe_reg[0]\,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      is_read => is_read,
      is_write_reg => is_write_reg_n_0,
      rst_reg => \^bus2ip_rnw_i_reg_0\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      start2 => start2
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_araddr(2),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \^q\(0),
      R => \^bus2ip_rnw_i_reg_0\
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => bus2ip_addr(5),
      R => \^bus2ip_rnw_i_reg_0\
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[8]_i_1_n_0\,
      Q => bus2ip_addr(0),
      R => \^bus2ip_rnw_i_reg_0\
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(0),
      I2 => state(1),
      O => bus2ip_rnw_i06_out
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => bus2ip_rnw_i06_out,
      Q => \^not_dual.gpio_oe_reg[0]\,
      R => \^bus2ip_rnw_i_reg_0\
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFA000A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \state[1]_i_2_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => is_read,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read,
      R => \^bus2ip_rnw_i_reg_0\
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
        port map (
      I0 => state(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => is_write,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88800000000FFFF"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^axi_lite_gpio_bvalid\,
      I2 => s_axi_rready,
      I3 => \^axi_lite_gpio_rvalid\,
      I4 => state(1),
      I5 => state(0),
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => \^bus2ip_rnw_i_reg_0\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => p_1_in
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_in,
      Q => \^bus2ip_rnw_i_reg_0\,
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^axi_lite_gpio_wready\,
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_bready,
      I4 => \^axi_lite_gpio_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^axi_lite_gpio_bvalid\,
      R => \^bus2ip_rnw_i_reg_0\
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_D1_reg[28]\(0),
      Q => s_axi_rdata(0),
      R => \^bus2ip_rnw_i_reg_0\
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_D1_reg[28]\(1),
      Q => s_axi_rdata(1),
      R => \^bus2ip_rnw_i_reg_0\
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_D1_reg[28]\(2),
      Q => s_axi_rdata(2),
      R => \^bus2ip_rnw_i_reg_0\
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_data_i_D1_reg[28]\(3),
      Q => s_axi_rdata(3),
      R => \^bus2ip_rnw_i_reg_0\
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^axi_lite_gpio_arready\,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_rready,
      I4 => \^axi_lite_gpio_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^axi_lite_gpio_rvalid\,
      R => \^bus2ip_rnw_i_reg_0\
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => state(1),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^bus2ip_rnw_i_reg_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFFAACC"
    )
        port map (
      I0 => \^axi_lite_gpio_wready\,
      I1 => s_axi_arvalid,
      I2 => \state[1]_i_2_n_0\,
      I3 => state(1),
      I4 => state(0),
      O => p_0_out(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E2E2E2ECCCCFFCC"
    )
        port map (
      I0 => \^axi_lite_gpio_arready\,
      I1 => state(1),
      I2 => \state[1]_i_2_n_0\,
      I3 => \state[1]_i_3_n_0\,
      I4 => s_axi_arvalid,
      I5 => state(0),
      O => p_0_out(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^axi_lite_gpio_bvalid\,
      I2 => s_axi_rready,
      I3 => \^axi_lite_gpio_rvalid\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(0),
      Q => state(0),
      R => \^bus2ip_rnw_i_reg_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(1),
      Q => state(1),
      R => \^bus2ip_rnw_i_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_full_i_reg_0 : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    ram_empty_i_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc1.count_d1_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gic0.gc1.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc1.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc1.count_d3_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Q_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs : entity is "clk_x_pntrs";
end Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \_inferred__0/i__n_0\ : STD_LOGIC;
  signal \_inferred__2/i__n_0\ : STD_LOGIC;
  signal \_inferred__3/i__n_0\ : STD_LOGIC;
  signal bin2gray : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gnxpm_cdc.gsync_stage[2].rd_stg_inst_n_4\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc_reg_n_0_[0]\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc_reg_n_0_[1]\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc_reg_n_0_[2]\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc_reg_n_0_[3]\ : STD_LOGIC;
  signal \gnxpm_cdc.wr_pntr_gc_reg_n_0_[0]\ : STD_LOGIC;
  signal \gnxpm_cdc.wr_pntr_gc_reg_n_0_[1]\ : STD_LOGIC;
  signal \gnxpm_cdc.wr_pntr_gc_reg_n_0_[2]\ : STD_LOGIC;
  signal \gnxpm_cdc.wr_pntr_gc_reg_n_0_[3]\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_23_out : STD_LOGIC_VECTOR ( 2 to 2 );
  signal p_3_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_5__0_n_0\ : STD_LOGIC;
  signal \^ram_empty_i_reg_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \_inferred__2/i_\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \_inferred__3/i_\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[2]_i_1\ : label is "soft_lutpair32";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \out\(3 downto 0) <= \^out\(3 downto 0);
  ram_empty_i_reg_0(3 downto 0) <= \^ram_empty_i_reg_0\(3 downto 0);
\_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \^out\(3),
      O => \_inferred__0/i__n_0\
    );
\_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_6_out(1),
      I1 => p_6_out(0),
      I2 => p_6_out(3),
      I3 => p_6_out(2),
      O => \_inferred__2/i__n_0\
    );
\_inferred__3/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_6_out(2),
      I1 => p_6_out(1),
      I2 => p_6_out(3),
      O => \_inferred__3/i__n_0\
    );
\gnxpm_cdc.gsync_stage[1].rd_stg_inst\: entity work.\Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0\
     port map (
      D(3 downto 0) => p_3_out(3 downto 0),
      Q(3) => \gnxpm_cdc.wr_pntr_gc_reg_n_0_[3]\,
      Q(2) => \gnxpm_cdc.wr_pntr_gc_reg_n_0_[2]\,
      Q(1) => \gnxpm_cdc.wr_pntr_gc_reg_n_0_[1]\,
      Q(0) => \gnxpm_cdc.wr_pntr_gc_reg_n_0_[0]\,
      ext_spi_clk => ext_spi_clk,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0)
    );
\gnxpm_cdc.gsync_stage[1].wr_stg_inst\: entity work.\Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_6\
     port map (
      AR(0) => AR(0),
      D(3 downto 0) => p_4_out(3 downto 0),
      Q(3) => \gnxpm_cdc.rd_pntr_gc_reg_n_0_[3]\,
      Q(2) => \gnxpm_cdc.rd_pntr_gc_reg_n_0_[2]\,
      Q(1) => \gnxpm_cdc.rd_pntr_gc_reg_n_0_[1]\,
      Q(0) => \gnxpm_cdc.rd_pntr_gc_reg_n_0_[0]\,
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.gsync_stage[2].rd_stg_inst\: entity work.\Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_7\
     port map (
      D(0) => \gnxpm_cdc.gsync_stage[2].rd_stg_inst_n_4\,
      \Q_reg_reg[3]_0\(3 downto 0) => p_3_out(3 downto 0),
      ext_spi_clk => ext_spi_clk,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      \out\(3 downto 0) => \^out\(3 downto 0)
    );
\gnxpm_cdc.gsync_stage[2].wr_stg_inst\: entity work.\Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_8\
     port map (
      AR(0) => AR(0),
      D(0) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      \Q_reg_reg[3]_0\(3 downto 0) => p_4_out(3 downto 0),
      \out\(3 downto 0) => p_6_out(3 downto 0),
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.rd_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \_inferred__2/i__n_0\,
      Q => \^q\(0)
    );
\gnxpm_cdc.rd_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \_inferred__3/i__n_0\,
      Q => \^q\(1)
    );
\gnxpm_cdc.rd_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      Q => p_23_out(2)
    );
\gnxpm_cdc.rd_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_6_out(3),
      Q => \^q\(2)
    );
\gnxpm_cdc.rd_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(0),
      Q => \gnxpm_cdc.rd_pntr_gc_reg_n_0_[0]\
    );
\gnxpm_cdc.rd_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(1),
      Q => \gnxpm_cdc.rd_pntr_gc_reg_n_0_[1]\
    );
\gnxpm_cdc.rd_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(2),
      Q => \gnxpm_cdc.rd_pntr_gc_reg_n_0_[2]\
    );
\gnxpm_cdc.rd_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gc1.count_d2_reg[3]\(3),
      Q => \gnxpm_cdc.rd_pntr_gc_reg_n_0_[3]\
    );
\gnxpm_cdc.wr_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \Q_reg_reg[1]\(0),
      Q => \^ram_empty_i_reg_0\(0)
    );
\gnxpm_cdc.wr_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \_inferred__0/i__n_0\,
      Q => \^ram_empty_i_reg_0\(1)
    );
\gnxpm_cdc.wr_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gnxpm_cdc.gsync_stage[2].rd_stg_inst_n_4\,
      Q => \^ram_empty_i_reg_0\(2)
    );
\gnxpm_cdc.wr_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \^out\(3),
      Q => \^ram_empty_i_reg_0\(3)
    );
\gnxpm_cdc.wr_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[3]\(0),
      I1 => \gic0.gc1.count_d3_reg[3]\(1),
      O => bin2gray(0)
    );
\gnxpm_cdc.wr_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[3]\(1),
      I1 => \gic0.gc1.count_d3_reg[3]\(2),
      O => bin2gray(1)
    );
\gnxpm_cdc.wr_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[3]\(2),
      I1 => \gic0.gc1.count_d3_reg[3]\(3),
      O => bin2gray(2)
    );
\gnxpm_cdc.wr_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(0),
      Q => \gnxpm_cdc.wr_pntr_gc_reg_n_0_[0]\
    );
\gnxpm_cdc.wr_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(1),
      Q => \gnxpm_cdc.wr_pntr_gc_reg_n_0_[1]\
    );
\gnxpm_cdc.wr_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(2),
      Q => \gnxpm_cdc.wr_pntr_gc_reg_n_0_[2]\
    );
\gnxpm_cdc.wr_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gic0.gc1.count_d3_reg[3]\(3),
      Q => \gnxpm_cdc.wr_pntr_gc_reg_n_0_[3]\
    );
\ram_empty_i_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc1.count_d2_reg[3]\(3),
      I1 => \^ram_empty_i_reg_0\(3),
      I2 => \gc1.count_d2_reg[3]\(2),
      I3 => \^ram_empty_i_reg_0\(2),
      I4 => \ram_empty_i_i_5__0_n_0\,
      O => ram_empty_i_reg
    );
\ram_empty_i_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^ram_empty_i_reg_0\(0),
      I1 => \gc1.count_d2_reg[3]\(0),
      I2 => \^ram_empty_i_reg_0\(1),
      I3 => \gc1.count_d2_reg[3]\(1),
      O => \ram_empty_i_i_5__0_n_0\
    );
ram_full_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gic0.gc1.count_d2_reg[3]\(2),
      I2 => p_23_out(2),
      I3 => \gic0.gc1.count_d2_reg[3]\(1),
      I4 => \gic0.gc1.count_d2_reg[3]\(0),
      I5 => \^q\(1),
      O => ram_full_i_reg_0
    );
ram_full_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gic0.gc1.count_d1_reg[2]\(0),
      I2 => p_23_out(2),
      I3 => \gic0.gc1.count_d1_reg[2]\(1),
      O => ram_full_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs_13 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : out STD_LOGIC;
    ram_empty_i_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    ram_full_fb_i_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc1.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc1.count_d3_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc1.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs_13 : entity is "clk_x_pntrs";
end Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs_13;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs_13 is
  signal \_inferred__2/i__n_0\ : STD_LOGIC;
  signal \_inferred__3/i__n_0\ : STD_LOGIC;
  signal bin2gray : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\ : STD_LOGIC;
  signal gray2bin : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_empty_i_i_5_n_0 : STD_LOGIC;
  signal \^ram_empty_i_reg_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ram_full_fb_i_reg_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_full_i_i_5_n_0 : STD_LOGIC;
  signal rd_pntr_gc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_gc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \_inferred__2/i_\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \_inferred__3/i_\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gnxpm_cdc.wr_pntr_gc[2]_i_1\ : label is "soft_lutpair26";
begin
  \out\(3 downto 0) <= \^out\(3 downto 0);
  ram_empty_i_reg_0(3 downto 0) <= \^ram_empty_i_reg_0\(3 downto 0);
  ram_full_fb_i_reg_0(3 downto 0) <= \^ram_full_fb_i_reg_0\(3 downto 0);
\_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \^out\(3),
      O => gray2bin(1)
    );
\_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_6_out(1),
      I1 => p_6_out(0),
      I2 => p_6_out(3),
      I3 => p_6_out(2),
      O => \_inferred__2/i__n_0\
    );
\_inferred__3/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_6_out(2),
      I1 => p_6_out(1),
      I2 => p_6_out(3),
      O => \_inferred__3/i__n_0\
    );
\gnxpm_cdc.gsync_stage[1].rd_stg_inst\: entity work.\Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_28\
     port map (
      D(3 downto 0) => p_3_out(3 downto 0),
      Q(3 downto 0) => wr_pntr_gc(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.gsync_stage[1].wr_stg_inst\: entity work.\Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_29\
     port map (
      AR(0) => AR(0),
      D(3 downto 0) => p_4_out(3 downto 0),
      Q(3 downto 0) => rd_pntr_gc(3 downto 0),
      ext_spi_clk => ext_spi_clk
    );
\gnxpm_cdc.gsync_stage[2].rd_stg_inst\: entity work.\Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_30\
     port map (
      D(0) => gray2bin(2),
      \Q_reg_reg[3]_0\(3 downto 0) => p_3_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      \out\(3 downto 0) => \^out\(3 downto 0),
      s_axi_aclk => s_axi_aclk
    );
\gnxpm_cdc.gsync_stage[2].wr_stg_inst\: entity work.\Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff__parameterized0_31\
     port map (
      AR(0) => AR(0),
      D(0) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      \Q_reg_reg[3]_0\(3 downto 0) => p_4_out(3 downto 0),
      ext_spi_clk => ext_spi_clk,
      \out\(3 downto 0) => p_6_out(3 downto 0)
    );
\gnxpm_cdc.rd_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => \_inferred__2/i__n_0\,
      Q => \^ram_full_fb_i_reg_0\(0)
    );
\gnxpm_cdc.rd_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => \_inferred__3/i__n_0\,
      Q => \^ram_full_fb_i_reg_0\(1)
    );
\gnxpm_cdc.rd_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      Q => \^ram_full_fb_i_reg_0\(2)
    );
\gnxpm_cdc.rd_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => p_6_out(3),
      Q => \^ram_full_fb_i_reg_0\(3)
    );
\gnxpm_cdc.rd_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gc1.count_d2_reg[3]\(0),
      Q => rd_pntr_gc(0)
    );
\gnxpm_cdc.rd_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gc1.count_d2_reg[3]\(1),
      Q => rd_pntr_gc(1)
    );
\gnxpm_cdc.rd_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gc1.count_d2_reg[3]\(2),
      Q => rd_pntr_gc(2)
    );
\gnxpm_cdc.rd_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(3),
      Q => rd_pntr_gc(3)
    );
\gnxpm_cdc.wr_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(0),
      Q => \^ram_empty_i_reg_0\(0)
    );
\gnxpm_cdc.wr_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(1),
      Q => \^ram_empty_i_reg_0\(1)
    );
\gnxpm_cdc.wr_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => gray2bin(2),
      Q => \^ram_empty_i_reg_0\(2)
    );
\gnxpm_cdc.wr_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \^out\(3),
      Q => \^ram_empty_i_reg_0\(3)
    );
\gnxpm_cdc.wr_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[3]\(0),
      I1 => \gic0.gc1.count_d3_reg[3]\(1),
      O => bin2gray(0)
    );
\gnxpm_cdc.wr_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[3]\(1),
      I1 => \gic0.gc1.count_d3_reg[3]\(2),
      O => bin2gray(1)
    );
\gnxpm_cdc.wr_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[3]\(2),
      I1 => \gic0.gc1.count_d3_reg[3]\(3),
      O => bin2gray(2)
    );
\gnxpm_cdc.wr_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(0),
      Q => wr_pntr_gc(0)
    );
\gnxpm_cdc.wr_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(1),
      Q => wr_pntr_gc(1)
    );
\gnxpm_cdc.wr_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(2),
      Q => wr_pntr_gc(2)
    );
\gnxpm_cdc.wr_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      CLR => AR(0),
      D => \gic0.gc1.count_d3_reg[3]\(3),
      Q => wr_pntr_gc(3)
    );
ram_empty_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => Q(3),
      I1 => \^ram_empty_i_reg_0\(3),
      I2 => Q(2),
      I3 => \^ram_empty_i_reg_0\(2),
      I4 => ram_empty_i_i_5_n_0,
      O => ram_empty_i_reg
    );
ram_empty_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^ram_empty_i_reg_0\(1),
      I1 => Q(1),
      I2 => \^ram_empty_i_reg_0\(0),
      I3 => Q(0),
      O => ram_empty_i_i_5_n_0
    );
\ram_full_i_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gic0.gc1.count_d2_reg[3]\(3),
      I1 => \^ram_full_fb_i_reg_0\(3),
      I2 => \gic0.gc1.count_d2_reg[3]\(2),
      I3 => \^ram_full_fb_i_reg_0\(2),
      I4 => ram_full_i_i_5_n_0,
      O => ram_full_fb_i_reg
    );
ram_full_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^ram_full_fb_i_reg_0\(0),
      I1 => \gic0.gc1.count_d2_reg[3]\(0),
      I2 => \^ram_full_fb_i_reg_0\(1),
      I3 => \gic0.gc1.count_d2_reg[3]\(1),
      O => ram_full_i_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_memory is
  port (
    \OTHER_RATIO_GENERATE.Serial_Dout_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I113 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc1.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    L : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_memory : entity is "memory";
end Arty_Z7_20_PmodGYRO_0_0_memory;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_memory is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\OTHER_RATIO_GENERATE.Serial_Dout_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      I2 => \^q\(7),
      O => \OTHER_RATIO_GENERATE.Serial_Dout_reg\
    );
\gdm.dm_gen.dm\: entity work.Arty_Z7_20_PmodGYRO_0_0_dmem
     port map (
      AR(0) => AR(0),
      E(0) => E(0),
      I113 => I113,
      L(3 downto 0) => L(3 downto 0),
      Q(7) => \gdm.dm_gen.dm_n_0\,
      Q(6) => \gdm.dm_gen.dm_n_1\,
      Q(5) => \gdm.dm_gen.dm_n_2\,
      Q(4) => \gdm.dm_gen.dm_n_3\,
      Q(3) => \gdm.dm_gen.dm_n_4\,
      Q(2) => \gdm.dm_gen.dm_n_5\,
      Q(1) => \gdm.dm_gen.dm_n_6\,
      Q(0) => \gdm.dm_gen.dm_n_7\,
      ext_spi_clk => ext_spi_clk,
      \gc1.count_d2_reg[3]\(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => \^q\(0)
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => \^q\(1)
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => \^q\(2)
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => \^q\(3)
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => \^q\(4)
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => \^q\(5)
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => \^q\(6)
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_memory_16 is
  port (
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc1.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    L : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_memory_16 : entity is "memory";
end Arty_Z7_20_PmodGYRO_0_0_memory_16;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_memory_16 is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
begin
\gdm.dm_gen.dm\: entity work.Arty_Z7_20_PmodGYRO_0_0_dmem_22
     port map (
      AR(0) => AR(0),
      E(0) => E(0),
      L(3 downto 0) => L(3 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gc1.count_d2_reg[3]\(3 downto 0) => \gc1.count_d2_reg[3]\(3 downto 0),
      \goreg_dm.dout_i_reg[7]\(7) => \gdm.dm_gen.dm_n_0\,
      \goreg_dm.dout_i_reg[7]\(6) => \gdm.dm_gen.dm_n_1\,
      \goreg_dm.dout_i_reg[7]\(5) => \gdm.dm_gen.dm_n_2\,
      \goreg_dm.dout_i_reg[7]\(4) => \gdm.dm_gen.dm_n_3\,
      \goreg_dm.dout_i_reg[7]\(3) => \gdm.dm_gen.dm_n_4\,
      \goreg_dm.dout_i_reg[7]\(2) => \gdm.dm_gen.dm_n_5\,
      \goreg_dm.dout_i_reg[7]\(1) => \gdm.dm_gen.dm_n_6\,
      \goreg_dm.dout_i_reg[7]\(0) => \gdm.dm_gen.dm_n_7\,
      ram_empty_fb_i_reg(0) => ram_empty_fb_i_reg(0),
      s_axi_aclk => s_axi_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(0)
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(1)
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(2)
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(3)
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(4)
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(5)
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(6)
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      CLR => AR(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_rd_logic is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \spisel_d1_reg__0\ : in STD_LOGIC;
    \gc1.count_d2_reg[3]\ : in STD_LOGIC;
    \gnxpm_cdc.wr_pntr_bin_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_rd_logic : entity is "rd_logic";
end Arty_Z7_20_PmodGYRO_0_0_rd_logic;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_rd_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_out : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal rpntr_n_7 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.Arty_Z7_20_PmodGYRO_0_0_rd_fwft
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      ext_spi_clk => ext_spi_clk,
      \gc1.count_d2_reg[3]\ => \gc1.count_d2_reg[3]\,
      \gnxpm_cdc.wr_pntr_bin_reg[3]\ => rpntr_n_7,
      \goreg_dm.dout_i_reg[7]\(0) => \goreg_dm.dout_i_reg[7]\(0),
      \out\ => \out\,
      ram_empty_fb_i_reg => p_2_out,
      ram_empty_i0 => ram_empty_i0,
      \spisel_d1_reg__0\ => \spisel_d1_reg__0\
    );
\gras.rsts\: entity work.Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as
     port map (
      AR(0) => AR(0),
      ext_spi_clk => ext_spi_clk,
      \out\ => p_2_out,
      ram_empty_i0 => ram_empty_i0
    );
rpntr: entity work.Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr
     port map (
      AR(0) => AR(0),
      D(2 downto 0) => D(2 downto 0),
      E(0) => \^e\(0),
      Q(3 downto 0) => Q(3 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gnxpm_cdc.wr_pntr_bin_reg[3]\(3 downto 0) => \gnxpm_cdc.wr_pntr_bin_reg[3]\(3 downto 0),
      ram_empty_i_reg => rpntr_n_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_rd_logic_14 is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icount_out_reg[3]\ : out STD_LOGIC;
    Receive_ip2bus_error0 : out STD_LOGIC;
    \gnxpm_cdc.rd_pntr_gc_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    \gc1.count_d2_reg[3]\ : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    \gnxpm_cdc.wr_pntr_bin_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_rd_logic_14 : entity is "rd_logic";
end Arty_Z7_20_PmodGYRO_0_0_rd_logic_14;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_rd_logic_14 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_out : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.Arty_Z7_20_PmodGYRO_0_0_rd_fwft_25
     port map (
      AR(0) => AR(0),
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => \^e\(0),
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      \goreg_dm.dout_i_reg[7]\(0) => \goreg_dm.dout_i_reg[7]\(0),
      \icount_out_reg[3]\ => \icount_out_reg[3]\,
      \out\ => \out\,
      p_5_in => p_5_in,
      ram_empty_fb_i_reg => p_2_out,
      s_axi_aclk => s_axi_aclk
    );
\gras.rsts\: entity work.Arty_Z7_20_PmodGYRO_0_0_rd_status_flags_as_26
     port map (
      AR(0) => AR(0),
      \out\ => p_2_out,
      ram_empty_i0 => ram_empty_i0,
      s_axi_aclk => s_axi_aclk
    );
rpntr: entity work.Arty_Z7_20_PmodGYRO_0_0_rd_bin_cntr_27
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3 downto 0) => Q(3 downto 0),
      \gc1.count_d2_reg[3]_0\ => \gc1.count_d2_reg[3]\,
      \gnxpm_cdc.rd_pntr_gc_reg[2]\(2 downto 0) => \gnxpm_cdc.rd_pntr_gc_reg[2]\(2 downto 0),
      \gnxpm_cdc.wr_pntr_bin_reg[3]\(3 downto 0) => \gnxpm_cdc.wr_pntr_bin_reg[3]\(3 downto 0),
      ram_empty_i0 => ram_empty_i0,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gc1.count_reg[0]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_TxFIFO_ptr_int : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo is
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\ : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
  \gc1.count_reg[0]\(2 downto 0) <= rd_rst_reg(2 downto 0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d2;
  \out\(1 downto 0) <= wr_rst_reg(1 downto 0);
  ram_full_i_reg <= rst_d3;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_d2,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst\: entity work.Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff
     port map (
      ext_spi_clk => ext_spi_clk,
      in0(0) => rd_rst_asreg,
      \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      \out\ => p_7_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst\: entity work.Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_3
     port map (
      in0(0) => wr_rst_asreg,
      \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      \out\ => p_8_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst\: entity work.Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_4
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      ext_spi_clk => ext_spi_clk,
      in0(0) => rd_rst_asreg,
      \out\ => p_7_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst\: entity work.Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_5
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      in0(0) => wr_rst_asreg,
      \out\ => p_8_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => '0',
      PRE => reset_TxFIFO_ptr_int,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => reset_TxFIFO_ptr_int,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => reset_TxFIFO_ptr_int,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => reset_TxFIFO_ptr_int,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo_17 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gc1.count_reg[0]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    rx_fifo_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo_17 : entity is "reset_blk_ramfifo";
end Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo_17;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo_17 is
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\ : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
  \gc1.count_reg[0]\(2 downto 0) <= rd_rst_reg(2 downto 0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d2;
  \out\(1 downto 0) <= wr_rst_reg(1 downto 0);
  ram_full_fb_i_reg <= rst_d3;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => '0',
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => rst_d2,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst\: entity work.Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_18
     port map (
      in0(0) => rd_rst_asreg,
      \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      \out\ => p_7_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst\: entity work.Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_19
     port map (
      ext_spi_clk => ext_spi_clk,
      in0(0) => wr_rst_asreg,
      \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      \out\ => p_8_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst\: entity work.Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_20
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      in0(0) => rd_rst_asreg,
      \out\ => p_7_out,
      s_axi_aclk => s_axi_aclk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst\: entity work.Arty_Z7_20_PmodGYRO_0_0_synchronizer_ff_21
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      ext_spi_clk => ext_spi_clk,
      in0(0) => wr_rst_asreg,
      \out\ => p_8_out
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => rx_fifo_reset,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => rx_fifo_reset,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => '0',
      PRE => rx_fifo_reset,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => rx_fifo_reset,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_wr_logic is
  port (
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d2_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gnxpm_cdc.wr_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[3]\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[0]\ : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_wr_logic : entity is "wr_logic";
end Arty_Z7_20_PmodGYRO_0_0_wr_logic;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => \^e\(0),
      \gic0.gc1.count_d2_reg[0]\ => wpntr_n_0,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      \out\ => \out\,
      p_6_in => p_6_in,
      s_axi_aclk => s_axi_aclk
    );
wpntr: entity work.Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(2 downto 0) => Q(2 downto 0),
      \gic0.gc1.count_d2_reg[2]_0\(1 downto 0) => \gic0.gc1.count_d2_reg[2]\(1 downto 0),
      \gnxpm_cdc.rd_pntr_bin_reg[0]\ => \gnxpm_cdc.rd_pntr_bin_reg[0]\,
      \gnxpm_cdc.rd_pntr_bin_reg[3]\ => \gnxpm_cdc.rd_pntr_bin_reg[3]\,
      \gnxpm_cdc.rd_pntr_bin_reg[3]_0\(2 downto 0) => \gnxpm_cdc.rd_pntr_bin_reg[3]_0\(2 downto 0),
      \gnxpm_cdc.wr_pntr_gc_reg[3]\(3 downto 0) => \gnxpm_cdc.wr_pntr_gc_reg[3]\(3 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      ram_full_i_reg => wpntr_n_0,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_wr_logic_15 is
  port (
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gnxpm_cdc.wr_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    \gic0.gc1.count_d2_reg[3]\ : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    scndry_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_wr_logic_15 : entity is "wr_logic";
end Arty_Z7_20_PmodGYRO_0_0_wr_logic_15;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_wr_logic_15 is
  signal wpntr_n_0 : STD_LOGIC;
begin
\gwas.wsts\: entity work.Arty_Z7_20_PmodGYRO_0_0_wr_status_flags_as_23
     port map (
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\,
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      ext_spi_clk => ext_spi_clk,
      \gic0.gc1.count_d2_reg[3]\ => \gic0.gc1.count_d2_reg[3]\,
      \gnxpm_cdc.rd_pntr_bin_reg[0]\ => wpntr_n_0,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => \out\,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg,
      scndry_out => scndry_out,
      spiXfer_done_int => spiXfer_done_int
    );
wpntr: entity work.Arty_Z7_20_PmodGYRO_0_0_wr_bin_cntr_24
     port map (
      AR(0) => AR(0),
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gnxpm_cdc.rd_pntr_bin_reg[3]\(3 downto 0) => \gnxpm_cdc.rd_pntr_bin_reg[3]\(3 downto 0),
      \gnxpm_cdc.wr_pntr_gc_reg[3]\(3 downto 0) => \gnxpm_cdc.wr_pntr_gc_reg[3]\(3 downto 0),
      ram_full_fb_i_reg => wpntr_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif is
  port (
    bus2ip_reset : out STD_LOGIC;
    bus2ip_rnw : out STD_LOGIC;
    bus2ip_cs : out STD_LOGIC;
    AXI_LITE_GPIO_rvalid : out STD_LOGIC;
    AXI_LITE_GPIO_bvalid : out STD_LOGIC;
    AXI_LITE_GPIO_arready : out STD_LOGIC;
    AXI_LITE_GPIO_wready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Not_Dual.gpio_Data_Out_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\ : out STD_LOGIC;
    Read_Reg_Rst : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    gpio_xferAck_Reg : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[28]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.Arty_Z7_20_PmodGYRO_0_0_slave_attachment
     port map (
      AXI_LITE_GPIO_arready => AXI_LITE_GPIO_arready,
      AXI_LITE_GPIO_bvalid => AXI_LITE_GPIO_bvalid,
      AXI_LITE_GPIO_rvalid => AXI_LITE_GPIO_rvalid,
      AXI_LITE_GPIO_wready => AXI_LITE_GPIO_wready,
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      GPIO_xferAck_i => GPIO_xferAck_i,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => bus2ip_cs,
      \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\ => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\,
      \Not_Dual.gpio_Data_Out_reg[0]\(0) => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      \Not_Dual.gpio_OE_reg[0]\ => bus2ip_rnw,
      Q(0) => Q(0),
      Read_Reg_Rst => Read_Reg_Rst,
      bus2ip_rnw_i_reg_0 => bus2ip_reset,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      \ip2bus_data_i_D1_reg[28]\(3 downto 0) => \ip2bus_data_i_D1_reg[28]\(3 downto 0),
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(3 downto 0) => s_axi_rdata(3 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_slave_attachment__parameterized0\ is
  port (
    SR : out STD_LOGIC;
    p_3_in : out STD_LOGIC;
    Receive_ip2bus_error_reg : out STD_LOGIC;
    Transmit_ip2bus_error_reg : out STD_LOGIC;
    \SPICR_data_int_reg[0]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    AXI_LITE_SPI_rvalid : out STD_LOGIC;
    AXI_LITE_SPI_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2Bus_WrAck_intr_reg_hole_d1_reg : out STD_LOGIC;
    AXI_LITE_SPI_arready : out STD_LOGIC;
    AXI_LITE_SPI_wready : out STD_LOGIC;
    \icount_out_reg[1]\ : out STD_LOGIC;
    SPICR_data_int_reg0 : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 0 to 0 );
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    modf_reg : out STD_LOGIC;
    Transmit_ip2bus_error0 : out STD_LOGIC;
    IP2Bus_Error_1 : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\ : out STD_LOGIC;
    wr_ce_or_reduce_core_cmb : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : out STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    IP2Bus_Error : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    p_16_out : in STD_LOGIC;
    p_15_out : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rx_fifo_count : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    p_1_in35_in : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ : in STD_LOGIC;
    p_1_in32_in : in STD_LOGIC;
    p_1_in29_in : in STD_LOGIC;
    p_1_in26_in : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    p_1_in20_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    \goreg_dm.dout_i_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    scndry_out : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ : in STD_LOGIC;
    modf_reg_0 : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\ : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    tx_fifo_count : in STD_LOGIC_VECTOR ( 0 to 0 );
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ : in STD_LOGIC;
    \SPICR_data_int_reg[0]_0\ : in STD_LOGIC;
    Receive_ip2bus_error_reg_0 : in STD_LOGIC;
    p_4_in : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_slave_attachment__parameterized0\ : entity is "slave_attachment";
end \Arty_Z7_20_PmodGYRO_0_0_slave_attachment__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_slave_attachment__parameterized0\ is
  signal \^axi_lite_spi_arready\ : STD_LOGIC;
  signal \^axi_lite_spi_bvalid\ : STD_LOGIC;
  signal \^axi_lite_spi_rvalid\ : STD_LOGIC;
  signal \^axi_lite_spi_wready\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[6]\ : STD_LOGIC;
  signal bus2ip_rnw_i06_out : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_i_2_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair20";
begin
  AXI_LITE_SPI_arready <= \^axi_lite_spi_arready\;
  AXI_LITE_SPI_bvalid <= \^axi_lite_spi_bvalid\;
  AXI_LITE_SPI_rvalid <= \^axi_lite_spi_rvalid\;
  AXI_LITE_SPI_wready <= \^axi_lite_spi_wready\;
  SR <= \^sr\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(5),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      O => plusOp(5)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(5),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(5),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
I_DECODER: entity work.\Arty_Z7_20_PmodGYRO_0_0_address_decoder__parameterized0\
     port map (
      AXI_LITE_SPI_arready => \^axi_lite_spi_arready\,
      AXI_LITE_SPI_wready => \^axi_lite_spi_wready\,
      \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ => \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\,
      \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ => \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\,
      \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ => \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\,
      \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ => \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\,
      \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ => \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\,
      \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\,
      D(10 downto 0) => D(10 downto 0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(5 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(5 downto 0),
      IP2Bus_Error_1 => IP2Bus_Error_1,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\,
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\,
      Q => start2,
      Receive_ip2bus_error_reg => Receive_ip2bus_error_reg,
      Receive_ip2bus_error_reg_0 => Receive_ip2bus_error_reg_0,
      SPICR_data_int_reg0 => SPICR_data_int_reg0,
      \SPICR_data_int_reg[0]\ => \SPICR_data_int_reg[0]\,
      \SPICR_data_int_reg[0]_0\ => \SPICR_data_int_reg[0]_0\,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      Transmit_ip2bus_error0 => Transmit_ip2bus_error0,
      Transmit_ip2bus_error_reg => Transmit_ip2bus_error_reg,
      Tx_FIFO_Full_int => Tx_FIFO_Full_int,
      \bus2ip_addr_i_reg[6]\(4) => \bus2ip_addr_i_reg_n_0_[6]\,
      \bus2ip_addr_i_reg[6]\(3) => \bus2ip_addr_i_reg_n_0_[5]\,
      \bus2ip_addr_i_reg[6]\(2) => \bus2ip_addr_i_reg_n_0_[4]\,
      \bus2ip_addr_i_reg[6]\(1) => \bus2ip_addr_i_reg_n_0_[3]\,
      \bus2ip_addr_i_reg[6]\(0) => \bus2ip_addr_i_reg_n_0_[2]\,
      bus2ip_rnw_i_reg => bus2ip_rnw_i_reg_n_0,
      bus2ip_rnw_i_reg_0 => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2_n_0\,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(0),
      empty_fwft_i_reg => empty_fwft_i_reg,
      \goreg_dm.dout_i_reg[7]\(6 downto 0) => \goreg_dm.dout_i_reg[7]\(6 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\ => \gpregsm1.curr_fwft_state_reg[1]\,
      \icount_out_reg[1]\ => \icount_out_reg[1]\,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole_d1_reg => ip2Bus_WrAck_intr_reg_hole_d1_reg,
      \ip_irpt_enable_reg_reg[8]\(8 downto 0) => Q(8 downto 0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => ipif_glbl_irpt_enable_reg_reg,
      ipif_glbl_irpt_enable_reg_reg_0 => ipif_glbl_irpt_enable_reg_reg_0,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      is_read => is_read,
      is_write_reg => is_write_reg_n_0,
      modf_reg => modf_reg,
      modf_reg_0 => modf_reg_0,
      \out\ => \out\,
      p_15_out => p_15_out,
      p_16_out => p_16_out,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in20_in => p_1_in20_in,
      p_1_in23_in => p_1_in23_in,
      p_1_in26_in => p_1_in26_in,
      p_1_in29_in => p_1_in29_in,
      p_1_in32_in => p_1_in32_in,
      p_1_in35_in => p_1_in35_in,
      p_3_in => p_3_in,
      p_4_in => p_4_in,
      prmry_in => prmry_in,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      reset_trig0 => reset_trig0,
      rx_fifo_count(1 downto 0) => rx_fifo_count(1 downto 0),
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(1) => s_axi_wdata(4),
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wstrb(0) => s_axi_wstrb(1),
      scndry_out => scndry_out,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      tx_fifo_count(0) => tx_fifo_count(0),
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000E0000000000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => bus2ip_rnw_i_reg_n_0,
      I2 => s_axi_wdata(2),
      I3 => s_axi_wdata(3),
      I4 => s_axi_wdata(0),
      I5 => s_axi_wdata(1),
      O => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2_n_0\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => state(1),
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => state(1),
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => state(1),
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => state(1),
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => s_axi_awaddr(3),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => state(1),
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => s_axi_awaddr(4),
      O => \bus2ip_addr_i[6]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => \^sr\
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => \^sr\
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[4]\,
      R => \^sr\
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[5]\,
      R => \^sr\
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_2_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[6]\,
      R => \^sr\
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(1),
      I1 => s_axi_arvalid,
      I2 => state(0),
      O => bus2ip_rnw_i06_out
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => bus2ip_rnw_i06_out,
      Q => bus2ip_rnw_i_reg_n_0,
      R => \^sr\
    );
is_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(1),
      I2 => is_read_i_2_n_0,
      I3 => is_read,
      O => is_read_i_1_n_0
    );
is_read_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88800000000FFFF"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^axi_lite_spi_rvalid\,
      I2 => s_axi_bready,
      I3 => \^axi_lite_spi_bvalid\,
      I4 => state(0),
      I5 => state(1),
      O => is_read_i_2_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read,
      R => \^sr\
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => state(1),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_arvalid,
      I4 => is_read_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => \^sr\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => p_0_in1_in
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in1_in,
      Q => \^sr\,
      R => '0'
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => IP2Bus_Error,
      I1 => state(1),
      I2 => state(0),
      I3 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => \^sr\
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550C00"
    )
        port map (
      I0 => s_axi_bready,
      I1 => state(1),
      I2 => state(0),
      I3 => \^axi_lite_spi_wready\,
      I4 => \^axi_lite_spi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^axi_lite_spi_bvalid\,
      R => \^sr\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(0),
      Q => s_axi_rdata(0),
      R => \^sr\
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(1),
      Q => s_axi_rdata(1),
      R => \^sr\
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(2),
      Q => s_axi_rdata(2),
      R => \^sr\
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(10),
      Q => s_axi_rdata(10),
      R => \^sr\
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(3),
      Q => s_axi_rdata(3),
      R => \^sr\
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(4),
      Q => s_axi_rdata(4),
      R => \^sr\
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(5),
      Q => s_axi_rdata(5),
      R => \^sr\
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(6),
      Q => s_axi_rdata(6),
      R => \^sr\
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(7),
      Q => s_axi_rdata(7),
      R => \^sr\
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(8),
      Q => s_axi_rdata(8),
      R => \^sr\
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(9),
      Q => s_axi_rdata(9),
      R => \^sr\
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Error,
      Q => s_axi_rresp(0),
      R => \^sr\
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550C00"
    )
        port map (
      I0 => s_axi_rready,
      I1 => state(0),
      I2 => state(1),
      I3 => \^axi_lite_spi_arready\,
      I4 => \^axi_lite_spi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^axi_lite_spi_rvalid\,
      R => \^sr\
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F08"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => state(1),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF0"
    )
        port map (
      I0 => state(0),
      I1 => \^axi_lite_spi_wready\,
      I2 => \state[0]_i_2_n_0\,
      I3 => s_axi_arvalid,
      I4 => state(1),
      O => p_0_out(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444CCC4CCC4CCC"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \^axi_lite_spi_bvalid\,
      I3 => s_axi_bready,
      I4 => \^axi_lite_spi_rvalid\,
      I5 => s_axi_rready,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2CCE2FF"
    )
        port map (
      I0 => \^axi_lite_spi_arready\,
      I1 => state(1),
      I2 => \state[1]_i_2_n_0\,
      I3 => state(0),
      I4 => \state[1]_i_3_n_0\,
      O => p_0_out(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^axi_lite_spi_bvalid\,
      I1 => s_axi_bready,
      I2 => \^axi_lite_spi_rvalid\,
      I3 => s_axi_rready,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(0),
      Q => state(0),
      R => \^sr\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(1),
      Q => state(1),
      R => \^sr\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo is
  port (
    \out\ : out STD_LOGIC;
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.Serial_Dout_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_TxFIFO_ptr_int : in STD_LOGIC;
    \spisel_d1_reg__0\ : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gcx.clkx/_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_4\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_8\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_9\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_3\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_4\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_5\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_18_out : STD_LOGIC;
  signal p_22_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_23_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_5_out : STD_LOGIC;
  signal p_5_out_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rstblk_n_6 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wr_rst_i : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs
     port map (
      AR(0) => wr_rst_i(0),
      D(2) => \gntv_or_sync_fifo.gl0.rd_n_3\,
      D(1) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      D(0) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      Q(2) => p_23_out(3),
      Q(1 downto 0) => p_23_out(1 downto 0),
      \Q_reg_reg[1]\(0) => \gntv_or_sync_fifo.gcx.clkx/_n_0\,
      ext_spi_clk => ext_spi_clk,
      \gc1.count_d2_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gic0.gc1.count_d1_reg[2]\(1) => wr_pntr_plus2(2),
      \gic0.gc1.count_d1_reg[2]\(0) => wr_pntr_plus2(0),
      \gic0.gc1.count_d2_reg[3]\(2 downto 0) => p_13_out(3 downto 1),
      \gic0.gc1.count_d3_reg[3]\(3 downto 0) => p_12_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => rd_rst_i(1),
      \out\(3 downto 0) => p_5_out_0(3 downto 0),
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      ram_empty_i_reg_0(3 downto 0) => p_22_out(3 downto 0),
      ram_full_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_4\,
      ram_full_i_reg_0 => \gntv_or_sync_fifo.gcx.clkx_n_8\,
      s_axi_aclk => s_axi_aclk
    );
\gntv_or_sync_fifo.gcx.clkx/\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_5_out_0(1),
      I1 => p_5_out_0(0),
      I2 => p_5_out_0(3),
      I3 => p_5_out_0(2),
      O => \gntv_or_sync_fifo.gcx.clkx/_n_0\
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.Arty_Z7_20_PmodGYRO_0_0_rd_logic
     port map (
      AR(0) => rd_rst_i(2),
      D(2) => \gntv_or_sync_fifo.gl0.rd_n_3\,
      D(1) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      D(0) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      Q(3 downto 0) => p_0_out(3 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gc1.count_d2_reg[3]\ => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      \gnxpm_cdc.wr_pntr_bin_reg[3]\(3 downto 0) => p_22_out(3 downto 0),
      \goreg_dm.dout_i_reg[7]\(0) => p_5_out,
      \out\ => \out\,
      \spisel_d1_reg__0\ => \spisel_d1_reg__0\
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.Arty_Z7_20_PmodGYRO_0_0_wr_logic
     port map (
      AR(0) => wr_rst_i(1),
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => p_18_out,
      Q(2 downto 0) => p_13_out(3 downto 1),
      \gic0.gc1.count_d2_reg[2]\(1) => wr_pntr_plus2(2),
      \gic0.gc1.count_d2_reg[2]\(0) => wr_pntr_plus2(0),
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      \gnxpm_cdc.rd_pntr_bin_reg[0]\ => \gntv_or_sync_fifo.gcx.clkx_n_4\,
      \gnxpm_cdc.rd_pntr_bin_reg[3]\ => \gntv_or_sync_fifo.gcx.clkx_n_8\,
      \gnxpm_cdc.rd_pntr_bin_reg[3]_0\(2) => p_23_out(3),
      \gnxpm_cdc.rd_pntr_bin_reg[3]_0\(1 downto 0) => p_23_out(1 downto 0),
      \gnxpm_cdc.wr_pntr_gc_reg[3]\(3 downto 0) => p_12_out(3 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rstblk_n_6,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      \out\ => rst_full_ff_i,
      p_6_in => p_6_in,
      s_axi_aclk => s_axi_aclk
    );
\gntv_or_sync_fifo.mem\: entity work.Arty_Z7_20_PmodGYRO_0_0_memory
     port map (
      AR(0) => rd_rst_i(0),
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      I113 => p_18_out,
      L(3 downto 0) => p_12_out(3 downto 0),
      \OTHER_RATIO_GENERATE.Serial_Dout_reg\ => \OTHER_RATIO_GENERATE.Serial_Dout_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gc1.count_d2_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => p_5_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
rstblk: entity work.Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo
     port map (
      ext_spi_clk => ext_spi_clk,
      \gc1.count_reg[0]\(2 downto 0) => rd_rst_i(2 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_ff_i,
      \out\(1 downto 0) => wr_rst_i(1 downto 0),
      ram_full_i_reg => rstblk_n_6,
      reset_TxFIFO_ptr_int => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo_12 is
  port (
    \out\ : out STD_LOGIC;
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC;
    Receive_ip2bus_error0 : out STD_LOGIC;
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    rx_fifo_reset : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo_12 : entity is "fifo_generator_ramfifo";
end Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo_12;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo_12 is
  signal \gntv_or_sync_fifo.gcx.clkx_n_4\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_9\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_7\ : STD_LOGIC;
  signal gray2bin : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_22_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_23_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_5_out : STD_LOGIC;
  signal p_5_out_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rstblk_n_6 : STD_LOGIC;
  signal wr_rst_i : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.Arty_Z7_20_PmodGYRO_0_0_clk_x_pntrs_13
     port map (
      AR(0) => wr_rst_i(0),
      D(0) => gray2bin(0),
      Q(3 downto 0) => p_0_out(3 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gc1.count_d2_reg[3]\(2) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      \gc1.count_d2_reg[3]\(1) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      \gc1.count_d2_reg[3]\(0) => \gntv_or_sync_fifo.gl0.rd_n_7\,
      \gic0.gc1.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \gic0.gc1.count_d3_reg[3]\(3 downto 0) => p_12_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => rd_rst_i(1),
      \out\(3 downto 0) => p_5_out_0(3 downto 0),
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_4\,
      ram_empty_i_reg_0(3 downto 0) => p_22_out(3 downto 0),
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      ram_full_fb_i_reg_0(3 downto 0) => p_23_out(3 downto 0),
      s_axi_aclk => s_axi_aclk
    );
\gntv_or_sync_fifo.gcx.clkx/\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_5_out_0(1),
      I1 => p_5_out_0(0),
      I2 => p_5_out_0(3),
      I3 => p_5_out_0(2),
      O => gray2bin(0)
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.Arty_Z7_20_PmodGYRO_0_0_rd_logic_14
     port map (
      AR(0) => rd_rst_i(2),
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      Q(3 downto 0) => p_0_out(3 downto 0),
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      \gc1.count_d2_reg[3]\ => \gntv_or_sync_fifo.gcx.clkx_n_4\,
      \gnxpm_cdc.rd_pntr_gc_reg[2]\(2) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      \gnxpm_cdc.rd_pntr_gc_reg[2]\(1) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      \gnxpm_cdc.rd_pntr_gc_reg[2]\(0) => \gntv_or_sync_fifo.gl0.rd_n_7\,
      \gnxpm_cdc.wr_pntr_bin_reg[3]\(3 downto 0) => p_22_out(3 downto 0),
      \goreg_dm.dout_i_reg[7]\(0) => p_5_out,
      \icount_out_reg[3]\ => \icount_out_reg[3]\,
      \out\ => \out\,
      p_5_in => p_5_in,
      s_axi_aclk => s_axi_aclk
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.Arty_Z7_20_PmodGYRO_0_0_wr_logic_15
     port map (
      AR(0) => wr_rst_i(1),
      E(0) => E(0),
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\,
      Q(3 downto 0) => p_13_out(3 downto 0),
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      ext_spi_clk => ext_spi_clk,
      \gic0.gc1.count_d2_reg[3]\ => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      \gnxpm_cdc.rd_pntr_bin_reg[3]\(3 downto 0) => p_23_out(3 downto 0),
      \gnxpm_cdc.wr_pntr_gc_reg[3]\(3 downto 0) => p_12_out(3 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rstblk_n_6,
      \out\ => rst_full_ff_i,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      scndry_out => scndry_out,
      spiXfer_done_int => spiXfer_done_int
    );
\gntv_or_sync_fifo.mem\: entity work.Arty_Z7_20_PmodGYRO_0_0_memory_16
     port map (
      AR(0) => rd_rst_i(0),
      E(0) => E(0),
      L(3 downto 0) => p_12_out(3 downto 0),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0) => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gc1.count_d2_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => p_5_out,
      ram_empty_fb_i_reg(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      s_axi_aclk => s_axi_aclk
    );
rstblk: entity work.Arty_Z7_20_PmodGYRO_0_0_reset_blk_ramfifo_17
     port map (
      ext_spi_clk => ext_spi_clk,
      \gc1.count_reg[0]\(2 downto 0) => rd_rst_i(2 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_ff_i,
      \out\(1 downto 0) => wr_rst_i(1 downto 0),
      ram_full_fb_i_reg => rstblk_n_6,
      rx_fifo_reset => rx_fifo_reset,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_axi_gpio is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT : integer;
  attribute C_DOUT_DEFAULT of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT_2 : integer;
  attribute C_DOUT_DEFAULT_2 of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is "zynq";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 4;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 0;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is 32;
  attribute C_TRI_DEFAULT : integer;
  attribute C_TRI_DEFAULT of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is -1;
  attribute C_TRI_DEFAULT_2 : integer;
  attribute C_TRI_DEFAULT_2 of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is -1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is "axi_gpio";
  attribute ip_group : string;
  attribute ip_group of Arty_Z7_20_PmodGYRO_0_0_axi_gpio : entity is "LOGICORE";
end Arty_Z7_20_PmodGYRO_0_0_axi_gpio;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_axi_gpio is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_13 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_14 : STD_LOGIC;
  signal DBus_Reg : STD_LOGIC_VECTOR ( 0 to 3 );
  signal GPIO_xferAck_i : STD_LOGIC;
  signal Read_Reg_Rst : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 6 to 6 );
  signal bus2ip_cs : STD_LOGIC;
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_rnw : STD_LOGIC;
  signal gpio_core_1_n_15 : STD_LOGIC;
  signal gpio_xferAck_Reg : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 28 to 31 );
  signal ip2bus_data_i_D1 : STD_LOGIC_VECTOR ( 28 to 31 );
  signal ip2bus_rdack_i : STD_LOGIC;
  signal ip2bus_rdack_i_D1 : STD_LOGIC;
  signal ip2bus_wrack_i_D1 : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  gpio2_io_o(31) <= \<const0>\;
  gpio2_io_o(30) <= \<const0>\;
  gpio2_io_o(29) <= \<const0>\;
  gpio2_io_o(28) <= \<const0>\;
  gpio2_io_o(27) <= \<const0>\;
  gpio2_io_o(26) <= \<const0>\;
  gpio2_io_o(25) <= \<const0>\;
  gpio2_io_o(24) <= \<const0>\;
  gpio2_io_o(23) <= \<const0>\;
  gpio2_io_o(22) <= \<const0>\;
  gpio2_io_o(21) <= \<const0>\;
  gpio2_io_o(20) <= \<const0>\;
  gpio2_io_o(19) <= \<const0>\;
  gpio2_io_o(18) <= \<const0>\;
  gpio2_io_o(17) <= \<const0>\;
  gpio2_io_o(16) <= \<const0>\;
  gpio2_io_o(15) <= \<const0>\;
  gpio2_io_o(14) <= \<const0>\;
  gpio2_io_o(13) <= \<const0>\;
  gpio2_io_o(12) <= \<const0>\;
  gpio2_io_o(11) <= \<const0>\;
  gpio2_io_o(10) <= \<const0>\;
  gpio2_io_o(9) <= \<const0>\;
  gpio2_io_o(8) <= \<const0>\;
  gpio2_io_o(7) <= \<const0>\;
  gpio2_io_o(6) <= \<const0>\;
  gpio2_io_o(5) <= \<const0>\;
  gpio2_io_o(4) <= \<const0>\;
  gpio2_io_o(3) <= \<const0>\;
  gpio2_io_o(2) <= \<const0>\;
  gpio2_io_o(1) <= \<const0>\;
  gpio2_io_o(0) <= \<const0>\;
  gpio2_io_t(31) <= \<const1>\;
  gpio2_io_t(30) <= \<const1>\;
  gpio2_io_t(29) <= \<const1>\;
  gpio2_io_t(28) <= \<const1>\;
  gpio2_io_t(27) <= \<const1>\;
  gpio2_io_t(26) <= \<const1>\;
  gpio2_io_t(25) <= \<const1>\;
  gpio2_io_t(24) <= \<const1>\;
  gpio2_io_t(23) <= \<const1>\;
  gpio2_io_t(22) <= \<const1>\;
  gpio2_io_t(21) <= \<const1>\;
  gpio2_io_t(20) <= \<const1>\;
  gpio2_io_t(19) <= \<const1>\;
  gpio2_io_t(18) <= \<const1>\;
  gpio2_io_t(17) <= \<const1>\;
  gpio2_io_t(16) <= \<const1>\;
  gpio2_io_t(15) <= \<const1>\;
  gpio2_io_t(14) <= \<const1>\;
  gpio2_io_t(13) <= \<const1>\;
  gpio2_io_t(12) <= \<const1>\;
  gpio2_io_t(11) <= \<const1>\;
  gpio2_io_t(10) <= \<const1>\;
  gpio2_io_t(9) <= \<const1>\;
  gpio2_io_t(8) <= \<const1>\;
  gpio2_io_t(7) <= \<const1>\;
  gpio2_io_t(6) <= \<const1>\;
  gpio2_io_t(5) <= \<const1>\;
  gpio2_io_t(4) <= \<const1>\;
  gpio2_io_t(3) <= \<const1>\;
  gpio2_io_t(2) <= \<const1>\;
  gpio2_io_t(1) <= \<const1>\;
  gpio2_io_t(0) <= \<const1>\;
  ip2intc_irpt <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3 downto 0) <= \^s_axi_rdata\(3 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
AXI_LITE_IPIF_I: entity work.Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif
     port map (
      AXI_LITE_GPIO_arready => s_axi_arready,
      AXI_LITE_GPIO_bvalid => s_axi_bvalid,
      AXI_LITE_GPIO_rvalid => s_axi_rvalid,
      AXI_LITE_GPIO_wready => \^s_axi_wready\,
      D(3) => DBus_Reg(0),
      D(2) => DBus_Reg(1),
      D(1) => DBus_Reg(2),
      D(0) => DBus_Reg(3),
      E(0) => AXI_LITE_IPIF_I_n_12,
      GPIO_xferAck_i => GPIO_xferAck_i,
      \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].GPIO_DBus_i_reg[28]\ => AXI_LITE_IPIF_I_n_14,
      \Not_Dual.gpio_Data_Out_reg[0]\(0) => AXI_LITE_IPIF_I_n_13,
      Q(0) => bus2ip_addr(6),
      Read_Reg_Rst => Read_Reg_Rst,
      bus2ip_cs => bus2ip_cs,
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      \ip2bus_data_i_D1_reg[28]\(3) => ip2bus_data_i_D1(28),
      \ip2bus_data_i_D1_reg[28]\(2) => ip2bus_data_i_D1(29),
      \ip2bus_data_i_D1_reg[28]\(1) => ip2bus_data_i_D1(30),
      \ip2bus_data_i_D1_reg[28]\(0) => ip2bus_data_i_D1(31),
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2) => s_axi_araddr(8),
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2) => s_axi_awaddr(8),
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(3 downto 0) => \^s_axi_rdata\(3 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(7 downto 4) => s_axi_wdata(31 downto 28),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
gpio_core_1: entity work.Arty_Z7_20_PmodGYRO_0_0_GPIO_Core
     port map (
      D(3) => ip2bus_data(28),
      D(2) => ip2bus_data(29),
      D(1) => ip2bus_data(30),
      D(0) => ip2bus_data(31),
      E(0) => AXI_LITE_IPIF_I_n_13,
      GPIO_xferAck_i => GPIO_xferAck_i,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => AXI_LITE_IPIF_I_n_14,
      Q(0) => bus2ip_addr(6),
      Read_Reg_Rst => Read_Reg_Rst,
      SS(0) => bus2ip_reset,
      \bus2ip_addr_i_reg[3]\(3) => DBus_Reg(0),
      \bus2ip_addr_i_reg[3]\(2) => DBus_Reg(1),
      \bus2ip_addr_i_reg[3]\(1) => DBus_Reg(2),
      \bus2ip_addr_i_reg[3]\(0) => DBus_Reg(3),
      bus2ip_cs => bus2ip_cs,
      bus2ip_rnw => bus2ip_rnw,
      bus2ip_rnw_i_reg(0) => AXI_LITE_IPIF_I_n_12,
      gpio_io_i(3 downto 0) => gpio_io_i(3 downto 0),
      gpio_io_o(3 downto 0) => gpio_io_o(3 downto 0),
      gpio_io_t(3 downto 0) => gpio_io_t(3 downto 0),
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      ip2bus_rdack_i => ip2bus_rdack_i,
      ip2bus_wrack_i_D1_reg => gpio_core_1_n_15,
      s_axi_aclk => s_axi_aclk
    );
\ip2bus_data_i_D1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(28),
      Q => ip2bus_data_i_D1(28),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(29),
      Q => ip2bus_data_i_D1(29),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(30),
      Q => ip2bus_data_i_D1(30),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(31),
      Q => ip2bus_data_i_D1(31),
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_i,
      Q => ip2bus_rdack_i_D1,
      R => bus2ip_reset
    );
ip2bus_wrack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_core_1_n_15,
      Q => ip2bus_wrack_i_D1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif__parameterized0\ is
  port (
    bus2ip_reset_ipif_inverted : out STD_LOGIC;
    p_3_in : out STD_LOGIC;
    p_5_in : out STD_LOGIC;
    p_6_in : out STD_LOGIC;
    p_8_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    AXI_LITE_SPI_rvalid : out STD_LOGIC;
    AXI_LITE_SPI_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2Bus_WrAck_intr_reg_hole_d1_reg : out STD_LOGIC;
    AXI_LITE_SPI_arready : out STD_LOGIC;
    AXI_LITE_SPI_wready : out STD_LOGIC;
    \icount_out_reg[1]\ : out STD_LOGIC;
    SPICR_data_int_reg0 : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 0 to 0 );
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    modf_reg : out STD_LOGIC;
    Transmit_ip2bus_error0 : out STD_LOGIC;
    IP2Bus_Error_1 : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\ : out STD_LOGIC;
    wr_ce_or_reduce_core_cmb : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    IP2Bus_Error : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    p_16_out : in STD_LOGIC;
    p_15_out : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rx_fifo_count : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    p_1_in35_in : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ : in STD_LOGIC;
    p_1_in32_in : in STD_LOGIC;
    p_1_in29_in : in STD_LOGIC;
    p_1_in26_in : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    p_1_in20_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    \goreg_dm.dout_i_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    scndry_out : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ : in STD_LOGIC;
    modf_reg_0 : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\ : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    tx_fifo_count : in STD_LOGIC_VECTOR ( 0 to 0 );
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ : in STD_LOGIC;
    \SPICR_data_int_reg[0]\ : in STD_LOGIC;
    Receive_ip2bus_error_reg : in STD_LOGIC;
    p_4_in : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif__parameterized0\ : entity is "axi_lite_ipif";
end \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif__parameterized0\ is
begin
I_SLAVE_ATTACHMENT: entity work.\Arty_Z7_20_PmodGYRO_0_0_slave_attachment__parameterized0\
     port map (
      AXI_LITE_SPI_arready => AXI_LITE_SPI_arready,
      AXI_LITE_SPI_bvalid => AXI_LITE_SPI_bvalid,
      AXI_LITE_SPI_rvalid => AXI_LITE_SPI_rvalid,
      AXI_LITE_SPI_wready => AXI_LITE_SPI_wready,
      \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ => \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\,
      \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ => \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\,
      \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ => \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\,
      \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ => \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\,
      \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ => \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\,
      \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\,
      D(10 downto 0) => D(10 downto 0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      IP2Bus_Error => IP2Bus_Error,
      IP2Bus_Error_1 => IP2Bus_Error_1,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(10 downto 0) => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(10 downto 0),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\,
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\,
      Q(8 downto 0) => Q(8 downto 0),
      Receive_ip2bus_error_reg => p_5_in,
      Receive_ip2bus_error_reg_0 => Receive_ip2bus_error_reg,
      SPICR_data_int_reg0 => SPICR_data_int_reg0,
      \SPICR_data_int_reg[0]\ => p_8_in,
      \SPICR_data_int_reg[0]_0\ => \SPICR_data_int_reg[0]\,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      SR => bus2ip_reset_ipif_inverted,
      Transmit_ip2bus_error0 => Transmit_ip2bus_error0,
      Transmit_ip2bus_error_reg => p_6_in,
      Tx_FIFO_Full_int => Tx_FIFO_Full_int,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(0),
      empty_fwft_i_reg => empty_fwft_i_reg,
      \goreg_dm.dout_i_reg[7]\(6 downto 0) => \goreg_dm.dout_i_reg[7]\(6 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\ => \gpregsm1.curr_fwft_state_reg[1]\,
      \icount_out_reg[1]\ => \icount_out_reg[1]\,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole_d1_reg => ip2Bus_WrAck_intr_reg_hole_d1_reg,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => Bus_RNW_reg,
      ipif_glbl_irpt_enable_reg_reg_0 => ipif_glbl_irpt_enable_reg_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      modf_reg => modf_reg,
      modf_reg_0 => modf_reg_0,
      \out\ => \out\,
      p_15_out => p_15_out,
      p_16_out => p_16_out,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in20_in => p_1_in20_in,
      p_1_in23_in => p_1_in23_in,
      p_1_in26_in => p_1_in26_in,
      p_1_in29_in => p_1_in29_in,
      p_1_in32_in => p_1_in32_in,
      p_1_in35_in => p_1_in35_in,
      p_3_in => p_3_in,
      p_4_in => p_4_in,
      prmry_in => prmry_in,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      reset_trig0 => reset_trig0,
      rx_fifo_count(1 downto 0) => rx_fifo_count(1 downto 0),
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(4 downto 0) => s_axi_araddr(4 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(4 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      s_axi_wstrb(1 downto 0) => s_axi_wstrb(1 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      scndry_out => scndry_out,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      tx_fifo_count(0) => tx_fifo_count(0),
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top is
  port (
    \out\ : out STD_LOGIC;
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.Serial_Dout_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_TxFIFO_ptr_int : in STD_LOGIC;
    \spisel_d1_reg__0\ : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top : entity is "fifo_generator_top";
end Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top is
begin
\grf.rf\: entity work.Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      \OTHER_RATIO_GENERATE.Serial_Dout_reg\ => \OTHER_RATIO_GENERATE.Serial_Dout_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      \out\ => \out\,
      p_6_in => p_6_in,
      reset_TxFIFO_ptr_int => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      \spisel_d1_reg__0\ => \spisel_d1_reg__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top_11 is
  port (
    \out\ : out STD_LOGIC;
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC;
    Receive_ip2bus_error0 : out STD_LOGIC;
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    rx_fifo_reset : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top_11 : entity is "fifo_generator_top";
end Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top_11;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top_11 is
begin
\grf.rf\: entity work.Arty_Z7_20_PmodGYRO_0_0_fifo_generator_ramfifo_12
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => E(0),
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0) => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0),
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      ext_spi_clk => ext_spi_clk,
      \icount_out_reg[3]\ => \icount_out_reg[3]\,
      \out\ => \out\,
      p_5_in => p_5_in,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rx_fifo_reset => rx_fifo_reset,
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      spiXfer_done_int => spiXfer_done_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_gpio_0_0 : entity is "PmodGYRO_axi_gpio_0_0,axi_gpio,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_gpio_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_gpio_0_0 : entity is "PmodGYRO_axi_gpio_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_gpio_0_0 : entity is "axi_gpio,Vivado 2017.1_sdx";
end Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_gpio_0_0;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_gpio_0_0 is
  signal NLW_U0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gpio2_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of U0 : label is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of U0 : label is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of U0 : label is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of U0 : label is 0;
  attribute C_DOUT_DEFAULT : integer;
  attribute C_DOUT_DEFAULT of U0 : label is 0;
  attribute C_DOUT_DEFAULT_2 : integer;
  attribute C_DOUT_DEFAULT_2 of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of U0 : label is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of U0 : label is 4;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of U0 : label is 0;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of U0 : label is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TRI_DEFAULT : integer;
  attribute C_TRI_DEFAULT of U0 : label is -1;
  attribute C_TRI_DEFAULT_2 : integer;
  attribute C_TRI_DEFAULT_2 of U0 : label is -1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
begin
U0: entity work.Arty_Z7_20_PmodGYRO_0_0_axi_gpio
     port map (
      gpio2_io_i(31 downto 0) => B"00000000000000000000000000000000",
      gpio2_io_o(31 downto 0) => NLW_U0_gpio2_io_o_UNCONNECTED(31 downto 0),
      gpio2_io_t(31 downto 0) => NLW_U0_gpio2_io_t_UNCONNECTED(31 downto 0),
      gpio_io_i(3 downto 0) => gpio_io_i(3 downto 0),
      gpio_io_o(3 downto 0) => gpio_io_o(3 downto 0),
      gpio_io_t(3 downto 0) => gpio_io_t(3 downto 0),
      ip2intc_irpt => NLW_U0_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth is
  port (
    \out\ : out STD_LOGIC;
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.Serial_Dout_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_TxFIFO_ptr_int : in STD_LOGIC;
    \spisel_d1_reg__0\ : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth : entity is "fifo_generator_v13_1_4_synth";
end Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth is
begin
\gconvfifo.rf\: entity work.Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      \OTHER_RATIO_GENERATE.Serial_Dout_reg\ => \OTHER_RATIO_GENERATE.Serial_Dout_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      \out\ => \out\,
      p_6_in => p_6_in,
      reset_TxFIFO_ptr_int => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      \spisel_d1_reg__0\ => \spisel_d1_reg__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth_10 is
  port (
    \out\ : out STD_LOGIC;
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC;
    Receive_ip2bus_error0 : out STD_LOGIC;
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    rx_fifo_reset : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth_10 : entity is "fifo_generator_v13_1_4_synth";
end Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth_10;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth_10 is
begin
\gconvfifo.rf\: entity work.Arty_Z7_20_PmodGYRO_0_0_fifo_generator_top_11
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => E(0),
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0) => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0),
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      ext_spi_clk => ext_spi_clk,
      \icount_out_reg[3]\ => \icount_out_reg[3]\,
      \out\ => \out\,
      p_5_in => p_5_in,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rx_fifo_reset => rx_fifo_reset,
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      spiXfer_done_int => spiXfer_done_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4 is
  port (
    \out\ : out STD_LOGIC;
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.Serial_Dout_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_TxFIFO_ptr_int : in STD_LOGIC;
    \spisel_d1_reg__0\ : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4 : entity is "fifo_generator_v13_1_4";
end Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4 is
begin
inst_fifo_gen: entity work.Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      \OTHER_RATIO_GENERATE.Serial_Dout_reg\ => \OTHER_RATIO_GENERATE.Serial_Dout_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      \out\ => \out\,
      p_6_in => p_6_in,
      reset_TxFIFO_ptr_int => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      \spisel_d1_reg__0\ => \spisel_d1_reg__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_9 is
  port (
    \out\ : out STD_LOGIC;
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC;
    Receive_ip2bus_error0 : out STD_LOGIC;
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    rx_fifo_reset : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_9 : entity is "fifo_generator_v13_1_4";
end Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_9;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_9 is
begin
inst_fifo_gen: entity work.Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_synth_10
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => E(0),
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0) => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0),
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      ext_spi_clk => ext_spi_clk,
      \icount_out_reg[3]\ => \icount_out_reg[3]\,
      \out\ => \out\,
      p_5_in => p_5_in,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rx_fifo_reset => rx_fifo_reset,
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      spiXfer_done_int => spiXfer_done_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg is
  port (
    \out\ : out STD_LOGIC;
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC;
    Receive_ip2bus_error0 : out STD_LOGIC;
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    rx_fifo_reset : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg : entity is "async_fifo_fg";
end Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg is
begin
\USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM\: entity work.Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4_9
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => E(0),
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ => \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0) => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 0),
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      ext_spi_clk => ext_spi_clk,
      \icount_out_reg[3]\ => \icount_out_reg[3]\,
      \out\ => \out\,
      p_5_in => p_5_in,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rx_fifo_reset => rx_fifo_reset,
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      spiXfer_done_int => spiXfer_done_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg_2 is
  port (
    \out\ : out STD_LOGIC;
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    \OTHER_RATIO_GENERATE.Serial_Dout_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_TxFIFO_ptr_int : in STD_LOGIC;
    \spisel_d1_reg__0\ : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg_2 : entity is "async_fifo_fg";
end Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg_2;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg_2 is
begin
\USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM\: entity work.Arty_Z7_20_PmodGYRO_0_0_fifo_generator_v13_1_4
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      \OTHER_RATIO_GENERATE.Serial_Dout_reg\ => \OTHER_RATIO_GENERATE.Serial_Dout_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      ext_spi_clk => ext_spi_clk,
      \gic0.gc1.count_reg[0]\ => \gic0.gc1.count_reg[0]\,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      \out\ => \out\,
      p_6_in => p_6_in,
      reset_TxFIFO_ptr_int => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      \spisel_d1_reg__0\ => \spisel_d1_reg__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_qspi_core_interface is
  port (
    \out\ : out STD_LOGIC;
    \gic0.gc1.count_reg[0]\ : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    IP2Bus_Error : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4\ : out STD_LOGIC;
    sw_rst_cond_d1 : out STD_LOGIC;
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    p_1_in35_in : out STD_LOGIC;
    p_1_in32_in : out STD_LOGIC;
    p_1_in29_in : out STD_LOGIC;
    p_1_in26_in : out STD_LOGIC;
    p_1_in23_in : out STD_LOGIC;
    p_1_in20_in : out STD_LOGIC;
    p_1_in17_in : out STD_LOGIC;
    p_1_in14_in : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg_0\ : out STD_LOGIC;
    p_4_in : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : out STD_LOGIC;
    p_16_out : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : out STD_LOGIC;
    ip2Bus_RdAck_core_reg : out STD_LOGIC;
    p_15_out : out STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    spicr_5_txfifo_rst_frm_axi_clk : out STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6\ : out STD_LOGIC;
    Tx_FIFO_Full_int : out STD_LOGIC;
    rx_fifo_empty_i : out STD_LOGIC;
    \icount_out_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[8]\ : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0\ : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0\ : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    rd_ce_or_reduce_core_cmb : in STD_LOGIC;
    bus2ip_wrce_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    IP2Bus_Error_1 : in STD_LOGIC;
    SPICR_data_int_reg0 : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    Transmit_ip2bus_error0 : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : in STD_LOGIC;
    wr_ce_or_reduce_core_cmb : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0\ : in STD_LOGIC;
    intr_controller_rd_ce_or_reduce : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC;
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\ : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_qspi_core_interface : entity is "qspi_core_interface";
end Arty_Z7_20_PmodGYRO_0_0_qspi_core_interface;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_qspi_core_interface is
  signal Allow_MODF_Strobe : STD_LOGIC;
  signal Allow_Slave_MODF_Strobe : STD_LOGIC;
  signal CONTROL_REG_I_n_12 : STD_LOGIC;
  signal CONTROL_REG_I_n_14 : STD_LOGIC;
  signal CONTROL_REG_I_n_15 : STD_LOGIC;
  signal CONTROL_REG_I_n_16 : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_0\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_10\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_11\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_13\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_14\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_15\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_20\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_25\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_27\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_28\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_32\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_35\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_38\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_4\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_42\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_5\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_8\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_9\ : STD_LOGIC;
  signal \FIFO_EXISTS.FIFO_IF_MODULE_I_n_3\ : STD_LOGIC;
  signal \FIFO_EXISTS.FIFO_IF_MODULE_I_n_4\ : STD_LOGIC;
  signal \FIFO_EXISTS.FIFO_IF_MODULE_I_n_5\ : STD_LOGIC;
  signal \FIFO_EXISTS.RX_FIFO_FULL_CNTR_I_n_4\ : STD_LOGIC;
  signal \FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC_n_2\ : STD_LOGIC;
  signal \FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC_n_3\ : STD_LOGIC;
  signal \FIFO_EXISTS.RX_FIFO_II_n_2\ : STD_LOGIC;
  signal \FIFO_EXISTS.RX_FIFO_II_n_3\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_4\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_2\ : STD_LOGIC;
  signal \^fifo_exists.tx_full_emp_intr_md_0_gen.tx_fifo_count_d1_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_0\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_1\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_2\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_3\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_4\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_5\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_6\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]\ : STD_LOGIC;
  signal IP2Bus_RdAck_1 : STD_LOGIC;
  signal IP2Bus_WrAck_1 : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_20\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_22\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_23\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_24\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_8\ : STD_LOGIC;
  signal MODF_strobe0 : STD_LOGIC;
  signal R : STD_LOGIC;
  signal RESET_SYNC_AXI_SPI_CLK_INST_n_2 : STD_LOGIC;
  signal RESET_SYNC_AXI_SPI_CLK_INST_n_3 : STD_LOGIC;
  signal Receive_ip2bus_error0 : STD_LOGIC;
  signal Rx_FIFO_Empty_Synced_in_SPI_domain : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1 : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_flag : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_sig : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_synced_i : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_org : STD_LOGIC;
  signal Rx_FIFO_Full_i : STD_LOGIC;
  signal Rx_FIFO_Full_int : STD_LOGIC;
  signal SOFT_RESET_I_n_2 : STD_LOGIC;
  signal SOFT_RESET_I_n_3 : STD_LOGIC;
  signal SPICR_2_MST_N_SLV_to_spi_clk : STD_LOGIC;
  signal SPISEL_sync : STD_LOGIC;
  signal Slave_MODF_strobe0 : STD_LOGIC;
  signal Slave_MODF_strobe_cdc_from_spi_int_2 : STD_LOGIC;
  signal Tx_FIFO_Empty_intr : STD_LOGIC;
  signal Tx_FIFO_Full_i : STD_LOGIC;
  signal \^tx_fifo_full_int\ : STD_LOGIC;
  signal \USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_18_out\ : STD_LOGIC;
  signal bus2IP_Data_for_interrupt_core : STD_LOGIC_VECTOR ( 23 to 23 );
  signal data_Exists_RcFIFO_int_d1 : STD_LOGIC;
  signal data_Exists_RcFIFO_pulse038_in : STD_LOGIC;
  signal data_from_rx_fifo : STD_LOGIC_VECTOR ( 7 to 7 );
  signal data_from_txfifo : STD_LOGIC_VECTOR ( 0 to 7 );
  signal data_in : STD_LOGIC;
  signal drr_Overrun_int : STD_LOGIC;
  signal dtr_underrun_int : STD_LOGIC;
  signal dtr_underrun_to_axi_clk : STD_LOGIC;
  signal \^gic0.gc1.count_reg[0]\ : STD_LOGIC;
  signal \^ip2bus_rdack_core_reg\ : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg : STD_LOGIC;
  signal \^ip2bus_wrack_core_reg_1\ : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole : STD_LOGIC;
  signal \^ip_irpt_enable_reg_reg[8]\ : STD_LOGIC;
  signal modf_strobe_int : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal \^p_1_in14_in\ : STD_LOGIC;
  signal \^p_1_in17_in\ : STD_LOGIC;
  signal \^p_1_in20_in\ : STD_LOGIC;
  signal \^p_1_in23_in\ : STD_LOGIC;
  signal \^p_1_in26_in\ : STD_LOGIC;
  signal \^p_1_in29_in\ : STD_LOGIC;
  signal \^p_1_in32_in\ : STD_LOGIC;
  signal \^p_1_in35_in\ : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal \^prmry_in\ : STD_LOGIC;
  signal read_ack_delay_6 : STD_LOGIC;
  signal read_ack_delay_7 : STD_LOGIC;
  signal receive_Data_int : STD_LOGIC_VECTOR ( 0 to 7 );
  signal register_Data_slvsel_int : STD_LOGIC;
  signal reset2ip_reset_int : STD_LOGIC;
  signal reset_TxFIFO_ptr_int : STD_LOGIC;
  signal rst_to_spi_int : STD_LOGIC;
  signal rx_fifo_count : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^rx_fifo_empty_i\ : STD_LOGIC;
  signal rx_fifo_reset : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  signal serial_dout_int : STD_LOGIC;
  signal spiXfer_done_d2 : STD_LOGIC;
  signal spiXfer_done_d3 : STD_LOGIC;
  signal spiXfer_done_int : STD_LOGIC;
  signal spiXfer_done_to_axi_1 : STD_LOGIC;
  signal spiXfer_done_to_axi_d1 : STD_LOGIC;
  signal spicr_0_loop_to_spi_clk : STD_LOGIC;
  signal spicr_1_spe_to_spi_clk : STD_LOGIC;
  signal \^spicr_2_mst_n_slv_frm_axi_clk\ : STD_LOGIC;
  signal spicr_3_cpol_to_spi_clk : STD_LOGIC;
  signal spicr_4_cpha_to_spi_clk : STD_LOGIC;
  signal \^spicr_5_txfifo_rst_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_6_rxfifo_rst_frm_axi_clk\ : STD_LOGIC;
  signal spicr_9_lsb_to_spi_clk : STD_LOGIC;
  signal spicr_bits_7_8_frm_axi_clk : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spisel_d1_reg : STD_LOGIC;
  signal stop_clock_reg : STD_LOGIC;
  signal transfer_start_d1 : STD_LOGIC;
  signal tx_FIFO_Occpncy_MSB_d1 : STD_LOGIC;
  signal tx_fifo_count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_fifo_count_d1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_fifo_count_d2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_fifo_empty : STD_LOGIC;
  signal tx_occ_msb : STD_LOGIC;
  signal tx_occ_msb_4 : STD_LOGIC;
  signal wrack : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r\ : label is "inst/axi_quad_spi_0/U0/\NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r ";
begin
  \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[3]_0\(0) <= \^fifo_exists.tx_full_emp_intr_md_0_gen.tx_fifo_count_d1_reg[3]_0\(0);
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_0\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_1\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_2\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_3\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_4\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_5\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_6\;
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]\;
  Tx_FIFO_Full_int <= \^tx_fifo_full_int\;
  \gic0.gc1.count_reg[0]\ <= \^gic0.gc1.count_reg[0]\;
  ip2Bus_RdAck_core_reg <= \^ip2bus_rdack_core_reg\;
  ip2Bus_WrAck_core_reg_1 <= \^ip2bus_wrack_core_reg_1\;
  \ip_irpt_enable_reg_reg[8]\ <= \^ip_irpt_enable_reg_reg[8]\;
  \out\ <= \^out\;
  p_1_in14_in <= \^p_1_in14_in\;
  p_1_in17_in <= \^p_1_in17_in\;
  p_1_in20_in <= \^p_1_in20_in\;
  p_1_in23_in <= \^p_1_in23_in\;
  p_1_in26_in <= \^p_1_in26_in\;
  p_1_in29_in <= \^p_1_in29_in\;
  p_1_in32_in <= \^p_1_in32_in\;
  p_1_in35_in <= \^p_1_in35_in\;
  prmry_in <= \^prmry_in\;
  rx_fifo_empty_i <= \^rx_fifo_empty_i\;
  scndry_out <= \^scndry_out\;
  spicr_2_mst_n_slv_frm_axi_clk <= \^spicr_2_mst_n_slv_frm_axi_clk\;
  spicr_5_txfifo_rst_frm_axi_clk <= \^spicr_5_txfifo_rst_frm_axi_clk\;
  spicr_6_rxfifo_rst_frm_axi_clk <= \^spicr_6_rxfifo_rst_frm_axi_clk\;
CONTROL_REG_I: entity work.Arty_Z7_20_PmodGYRO_0_0_qspi_cntrl_reg
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ => \^spicr_6_rxfifo_rst_frm_axi_clk\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\ => CONTROL_REG_I_n_16,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \^rx_fifo_empty_i\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ => \^spicr_2_mst_n_slv_frm_axi_clk\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_1\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_2\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_3\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_4\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \^ip_irpt_enable_reg_reg[8]\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\ => CONTROL_REG_I_n_15,
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg\ => \^ip2bus_wrack_core_reg_1\,
      \RESET_FLOPS[15].RST_FLOPS\ => SOFT_RESET_I_n_2,
      Rx_FIFO_Full_i => Rx_FIFO_Full_i,
      Rx_FIFO_Full_int => Rx_FIFO_Full_int,
      SPICR_data_int_reg0 => SPICR_data_int_reg0,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(0),
      data_Exists_RcFIFO_int_d1 => data_Exists_RcFIFO_int_d1,
      empty_fwft_i_reg => \^out\,
      \icount_out_reg[3]\ => CONTROL_REG_I_n_12,
      \icount_out_reg[3]_0\ => CONTROL_REG_I_n_14,
      \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      p_1_in14_in => \^p_1_in14_in\,
      p_6_in => p_6_in,
      p_8_in => p_8_in,
      prmry_in => \^prmry_in\,
      ram_full_i_reg => \^gic0.gc1.count_reg[0]\,
      reset2ip_reset_int => reset2ip_reset_int,
      reset_TxFIFO_ptr_int => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      spiXfer_done_to_axi_1 => spiXfer_done_to_axi_1,
      spicr_bits_7_8_frm_axi_clk(1 downto 0) => spicr_bits_7_8_frm_axi_clk(1 downto 0)
    );
\FIFO_EXISTS.CLK_CROSS_I\: entity work.Arty_Z7_20_PmodGYRO_0_0_cross_clk_sync_fifo_1
     port map (
      Allow_MODF_Strobe => Allow_MODF_Strobe,
      Allow_Slave_MODF_Strobe => Allow_Slave_MODF_Strobe,
      Allow_Slave_MODF_Strobe_reg => \FIFO_EXISTS.CLK_CROSS_I_n_5\,
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg_1,
      \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_3\,
      \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_2\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \^spicr_6_rxfifo_rst_frm_axi_clk\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ => CONTROL_REG_I_n_14,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_1\,
      \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_0\,
      \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ => \^prmry_in\,
      D(0) => bus2IP_Data_for_interrupt_core(23),
      \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\ => dtr_underrun_int,
      D_0 => D_0,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_4\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0\ => \^rx_fifo_empty_i\,
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\ => \FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC_n_2\,
      \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_28\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ => \^scndry_out\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \FIFO_EXISTS.CLK_CROSS_I_n_15\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \FIFO_EXISTS.CLK_CROSS_I_n_14\,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ => \FIFO_EXISTS.CLK_CROSS_I_n_13\,
      \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ => \FIFO_EXISTS.CLK_CROSS_I_n_11\,
      \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]_0\ => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ => \FIFO_EXISTS.CLK_CROSS_I_n_10\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0\,
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \^ip2bus_rdack_core_reg\,
      \LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_24\,
      \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_38\,
      \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_1_CDC_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_0\,
      \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg_0\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_20\,
      MODF_strobe0 => MODF_strobe0,
      \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\(0) => \FIFO_EXISTS.CLK_CROSS_I_n_32\,
      \OTHER_RATIO_GENERATE.Shift_Reg_reg[7]_0\ => spicr_9_lsb_to_spi_clk,
      \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\(0) => data_in,
      \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]_0\ => spicr_0_loop_to_spi_clk,
      \OTHER_RATIO_GENERATE.sck_o_int_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_35\,
      \OTHER_RATIO_GENERATE.sck_o_int_reg_0\ => spicr_4_cpha_to_spi_clk,
      Q(0) => data_from_rx_fifo(7),
      R => R,
      \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ => spicr_3_cpol_to_spi_clk,
      \RESET_FLOPS[15].RST_FLOPS\ => SOFT_RESET_I_n_2,
      \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_8\,
      Rst_to_spi => rst_to_spi_int,
      Rx_FIFO_Full_Fifo_d1_flag => Rx_FIFO_Full_Fifo_d1_flag,
      Rx_FIFO_Full_Fifo_d1_sig => Rx_FIFO_Full_Fifo_d1_sig,
      Rx_FIFO_Full_int => Rx_FIFO_Full_int,
      \SPICR_data_int_reg[0]\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_4\,
      SPISEL_sync => SPISEL_sync,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_6\,
      SPIXfer_done_int_d1_reg => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_22\,
      SPI_TRISTATE_CONTROL_V => \FIFO_EXISTS.CLK_CROSS_I_n_42\,
      \SS_O_reg[0]\ => \FIFO_EXISTS.CLK_CROSS_I_n_25\,
      \SS_O_reg[0]_0\ => register_Data_slvsel_int,
      Slave_MODF_strobe0 => Slave_MODF_strobe0,
      Slave_MODF_strobe_reg => spicr_1_spe_to_spi_clk,
      Tx_FIFO_Empty_intr => Tx_FIFO_Empty_intr,
      Tx_FIFO_Full_i => Tx_FIFO_Full_i,
      Tx_FIFO_Full_int => \^tx_fifo_full_int\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      drr_Overrun_int => drr_Overrun_int,
      dtr_underrun_d1_reg => dtr_underrun_to_axi_clk,
      empty_fwft_i_reg => \FIFO_EXISTS.RX_FIFO_II_n_3\,
      empty_fwft_i_reg_0 => empty_fwft_i_reg,
      ext_spi_clk => ext_spi_clk,
      \goreg_dm.dout_i_reg[7]\(1) => data_from_txfifo(0),
      \goreg_dm.dout_i_reg[7]\(0) => data_from_txfifo(7),
      \icount_out_reg[1]\ => \FIFO_EXISTS.CLK_CROSS_I_n_20\,
      \icount_out_reg[3]\ => \FIFO_EXISTS.CLK_CROSS_I_n_9\,
      io0_i_sync => io0_i_sync,
      io1_i_sync => io1_i_sync,
      \ip_irpt_enable_reg_reg[8]\ => \^ip_irpt_enable_reg_reg[8]\,
      modf_reg => \FIFO_EXISTS.CLK_CROSS_I_n_27\,
      modf_reg_0 => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_5\,
      modf_strobe_int => modf_strobe_int,
      \out\ => tx_fifo_empty,
      p_1_in17_in => \^p_1_in17_in\,
      p_1_in20_in => \^p_1_in20_in\,
      p_1_in23_in => \^p_1_in23_in\,
      p_1_in35_in => \^p_1_in35_in\,
      p_3_in => p_3_in,
      p_3_out => p_3_out,
      prmry_in => Slave_MODF_strobe_cdc_from_spi_int_2,
      reset2ip_reset_int => reset2ip_reset_int,
      rx_fifo_count(1 downto 0) => rx_fifo_count(2 downto 1),
      rx_fifo_reset => rx_fifo_reset,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(5 downto 2) => s_axi_wdata(8 downto 5),
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      scndry_out => spiXfer_done_d2,
      serial_dout_int => serial_dout_int,
      spiXfer_done_d3 => spiXfer_done_d3,
      spiXfer_done_int => spiXfer_done_int,
      spiXfer_done_to_axi_1 => spiXfer_done_to_axi_1,
      spiXfer_done_to_axi_d1 => spiXfer_done_to_axi_d1,
      spicr_2_mst_n_slv_frm_axi_clk => \^spicr_2_mst_n_slv_frm_axi_clk\,
      spicr_bits_7_8_frm_axi_clk(1 downto 0) => spicr_bits_7_8_frm_axi_clk(1 downto 0),
      spisel_d1_reg => spisel_d1_reg,
      stop_clock_reg => stop_clock_reg,
      transfer_start_d1 => transfer_start_d1,
      transfer_start_reg => SPICR_2_MST_N_SLV_to_spi_clk,
      transfer_start_reg_0 => \FIFO_EXISTS.CLK_CROSS_I_n_8\,
      tx_FIFO_Occpncy_MSB_d1 => tx_FIFO_Occpncy_MSB_d1,
      tx_fifo_count(2 downto 0) => tx_fifo_count(2 downto 0),
      tx_fifo_count_d2(3 downto 0) => tx_fifo_count_d2(3 downto 0),
      tx_occ_msb => tx_occ_msb,
      tx_occ_msb_4 => tx_occ_msb_4
    );
\FIFO_EXISTS.FIFO_IF_MODULE_I\: entity work.Arty_Z7_20_PmodGYRO_0_0_qspi_fifo_ifmodule
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => dtr_underrun_to_axi_clk,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \FIFO_EXISTS.FIFO_IF_MODULE_I_n_5\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ => \FIFO_EXISTS.FIFO_IF_MODULE_I_n_4\,
      \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\ => \FIFO_EXISTS.FIFO_IF_MODULE_I_n_3\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg_0\,
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      Rx_FIFO_Full_Fifo_d1_synced_i => Rx_FIFO_Full_Fifo_d1_synced_i,
      Transmit_ip2bus_error0 => Transmit_ip2bus_error0,
      Tx_FIFO_Empty_intr => Tx_FIFO_Empty_intr,
      p_1_in26_in => \^p_1_in26_in\,
      p_1_in29_in => \^p_1_in29_in\,
      p_1_in32_in => \^p_1_in32_in\,
      p_4_in => p_4_in,
      prmry_in => \^out\,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(2 downto 0) => s_axi_wdata(4 downto 2),
      scndry_out => \^scndry_out\,
      tx_FIFO_Occpncy_MSB_d1 => tx_FIFO_Occpncy_MSB_d1,
      tx_occ_msb => tx_occ_msb
    );
\FIFO_EXISTS.RX_FIFO_EMPTY_SYNC_AXI_2_SPI_CDC\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3\
     port map (
      ext_spi_clk => ext_spi_clk,
      prmry_in => \^out\,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain
    );
\FIFO_EXISTS.RX_FIFO_FULL_CNTR_I\: entity work.Arty_Z7_20_PmodGYRO_0_0_counter_f
     port map (
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \^spicr_6_rxfifo_rst_frm_axi_clk\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ => CONTROL_REG_I_n_14,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_i_reg\ => \FIFO_EXISTS.RX_FIFO_FULL_CNTR_I_n_4\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_9\,
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_20\,
      \RESET_FLOPS[15].RST_FLOPS\ => SOFT_RESET_I_n_2,
      Rx_FIFO_Full_i => Rx_FIFO_Full_i,
      Rx_FIFO_Full_int => Rx_FIFO_Full_int,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      \icount_out_reg[0]_0\ => \icount_out_reg[3]\(0),
      \icount_out_reg[3]_0\(0) => \icount_out_reg[3]\(1),
      reset2ip_reset_int => reset2ip_reset_int,
      rx_fifo_count(1 downto 0) => rx_fifo_count(2 downto 1),
      s_axi_aclk => s_axi_aclk,
      scndry_out => spiXfer_done_d2,
      spiXfer_done_d3 => spiXfer_done_d3
    );
\FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC\: entity work.\Arty_Z7_20_PmodGYRO_0_0_cdc_sync__parameterized3_0\
     port map (
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\ => \FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC_n_3\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      Rx_FIFO_Full_Fifo_d1_flag => Rx_FIFO_Full_Fifo_d1_flag,
      Rx_FIFO_Full_Fifo_d1_sig => Rx_FIFO_Full_Fifo_d1_sig,
      Rx_FIFO_Full_Fifo_d1_synced_i => Rx_FIFO_Full_Fifo_d1_synced_i,
      \icount_out_reg[3]\ => \FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC_n_2\,
      \out\ => \^out\,
      prmry_in => Rx_FIFO_Full_Fifo_d1,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi_aclk => s_axi_aclk,
      scndry_out => \^scndry_out\
    );
\FIFO_EXISTS.RX_FIFO_II\: entity work.Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      E(0) => \USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_18_out\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \^rx_fifo_empty_i\,
      \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\ => Rx_FIFO_Full_Fifo_org,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(7 downto 1) => Q(6 downto 0),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\(0) => data_from_rx_fifo(7),
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \^ip2bus_rdack_core_reg\,
      Q(7) => receive_Data_int(0),
      Q(6) => receive_Data_int(1),
      Q(5) => receive_Data_int(2),
      Q(4) => receive_Data_int(3),
      Q(3) => receive_Data_int(4),
      Q(2) => receive_Data_int(5),
      Q(1) => receive_Data_int(6),
      Q(0) => receive_Data_int(7),
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      ext_spi_clk => ext_spi_clk,
      \icount_out_reg[3]\ => \FIFO_EXISTS.RX_FIFO_II_n_3\,
      \out\ => \^out\,
      p_5_in => p_5_in,
      ram_full_fb_i_reg => \FIFO_EXISTS.RX_FIFO_II_n_2\,
      rx_fifo_reset => rx_fifo_reset,
      s_axi_aclk => s_axi_aclk,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain,
      spiXfer_done_int => spiXfer_done_int
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.RX_FIFO_FULL_CNTR_I_n_4\,
      Q => Rx_FIFO_Full_i,
      R => '0'
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.Rx_FIFO_Full_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => CONTROL_REG_I_n_16,
      Q => Rx_FIFO_Full_int,
      R => '0'
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.CLK_CROSS_I_n_4\,
      Q => \^rx_fifo_empty_i\,
      R => '0'
    );
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_flag_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^scndry_out\,
      Q => Rx_FIFO_Full_Fifo_d1_flag,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => Rx_FIFO_Full_Fifo,
      Q => Rx_FIFO_Full_Fifo_d1,
      R => rst_to_spi_int
    );
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_sig_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC_n_3\,
      Q => Rx_FIFO_Full_Fifo_d1_sig,
      R => '0'
    );
\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I\: entity work.Arty_Z7_20_PmodGYRO_0_0_counter_f_1
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_0 => CONTROL_REG_I_n_12,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_4\,
      \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[3]\ => \^fifo_exists.tx_full_emp_intr_md_0_gen.tx_fifo_count_d1_reg[3]_0\(0),
      \RESET_FLOPS[15].RST_FLOPS\ => SOFT_RESET_I_n_2,
      \RESET_FLOPS[15].RST_FLOPS_0\ => SOFT_RESET_I_n_3,
      Tx_FIFO_Full_i => Tx_FIFO_Full_i,
      Tx_FIFO_Full_int => \^tx_fifo_full_int\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      reset2ip_reset_int => reset2ip_reset_int,
      reset_TxFIFO_ptr_int => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      scndry_out => spiXfer_done_d2,
      spiXfer_done_d3 => spiXfer_done_d3,
      tx_fifo_count(2 downto 0) => tx_fifo_count(2 downto 0)
    );
\FIFO_EXISTS.TX_FIFO_II\: entity work.Arty_Z7_20_PmodGYRO_0_0_async_fifo_fg_2
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ => spicr_9_lsb_to_spi_clk,
      \OTHER_RATIO_GENERATE.Serial_Dout_reg\ => \FIFO_EXISTS.TX_FIFO_II_n_2\,
      Q(7) => data_from_txfifo(0),
      Q(6) => data_from_txfifo(1),
      Q(5) => data_from_txfifo(2),
      Q(4) => data_from_txfifo(3),
      Q(3) => data_from_txfifo(4),
      Q(2) => data_from_txfifo(5),
      Q(1) => data_from_txfifo(6),
      Q(0) => data_from_txfifo(7),
      ext_spi_clk => ext_spi_clk,
      \gic0.gc1.count_reg[0]\ => \^gic0.gc1.count_reg[0]\,
      ip2Bus_WrAck_core_reg_1 => \^ip2bus_wrack_core_reg_1\,
      \out\ => tx_fifo_empty,
      p_6_in => p_6_in,
      reset_TxFIFO_ptr_int => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      \spisel_d1_reg__0\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_23\
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_4\,
      Q => Tx_FIFO_Full_i,
      R => '0'
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.CLK_CROSS_I_n_28\,
      Q => \^tx_fifo_full_int\,
      R => '0'
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.spiXfer_done_to_axi_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => spiXfer_done_to_axi_1,
      Q => spiXfer_done_to_axi_d1,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_fifo_count(0),
      Q => tx_fifo_count_d1(0),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_fifo_count(1),
      Q => tx_fifo_count_d1(1),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_fifo_count(2),
      Q => tx_fifo_count_d1(2),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^fifo_exists.tx_full_emp_intr_md_0_gen.tx_fifo_count_d1_reg[3]_0\(0),
      Q => tx_fifo_count_d1(3),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_fifo_count_d1(0),
      Q => tx_fifo_count_d2(0),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_fifo_count_d1(1),
      Q => tx_fifo_count_d2(1),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_fifo_count_d1(2),
      Q => tx_fifo_count_d2(2),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_fifo_count_d1(3),
      Q => tx_fifo_count_d2(3),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.data_Exists_RcFIFO_int_d1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_fifo_empty_i\,
      O => data_Exists_RcFIFO_pulse038_in
    );
\FIFO_EXISTS.data_Exists_RcFIFO_int_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => data_Exists_RcFIFO_pulse038_in,
      Q => data_Exists_RcFIFO_int_d1,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.tx_occ_msb_4_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_fifo_count_d2(3),
      Q => tx_occ_msb_4,
      R => reset2ip_reset_int
    );
INTERRUPT_CONTROL_I: entity work.Arty_Z7_20_PmodGYRO_0_0_interrupt_control
     port map (
      D(8) => bus2IP_Data_for_interrupt_core(23),
      D(7 downto 0) => s_axi_wdata(7 downto 0),
      E(0) => E(0),
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => CONTROL_REG_I_n_15,
      \FIFO_EXISTS.tx_occ_msb_4_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_11\,
      \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\ => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]\,
      IP2Bus_RdAck_1 => IP2Bus_RdAck_1,
      IP2Bus_WrAck_1 => IP2Bus_WrAck_1,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]\(8 downto 0) => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(8 downto 0),
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \^ip2bus_rdack_core_reg\,
      \LOGIC_GENERATION_CDC.SPISEL_PULSE_S2AX_3\ => \FIFO_EXISTS.CLK_CROSS_I_n_10\,
      \LOGIC_GENERATION_CDC.drr_Overrun_int_cdc_from_spi_d3_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_13\,
      \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_15\,
      \LOGIC_GENERATION_CDC.slave_MODF_strobe_cdc_from_spi_d3_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_14\,
      dtr_underrun_d1_reg => \FIFO_EXISTS.FIFO_IF_MODULE_I_n_4\,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      ip2Bus_RdAck_intr_reg_hole => ip2Bus_RdAck_intr_reg_hole,
      ip2Bus_WrAck_core_reg => ip2Bus_WrAck_core_reg,
      ip2Bus_WrAck_intr_reg_hole => ip2Bus_WrAck_intr_reg_hole,
      ip2intc_irpt => ip2intc_irpt,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_1_in14_in => \^p_1_in14_in\,
      p_1_in17_in => \^p_1_in17_in\,
      p_1_in20_in => \^p_1_in20_in\,
      p_1_in23_in => \^p_1_in23_in\,
      p_1_in26_in => \^p_1_in26_in\,
      p_1_in29_in => \^p_1_in29_in\,
      p_1_in32_in => \^p_1_in32_in\,
      p_1_in35_in => \^p_1_in35_in\,
      rc_FIFO_Full_d1_reg => \FIFO_EXISTS.FIFO_IF_MODULE_I_n_3\,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi_aclk => s_axi_aclk,
      tx_FIFO_Empty_d1_reg => \FIFO_EXISTS.FIFO_IF_MODULE_I_n_5\,
      wrack => wrack
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(10),
      Q => \s_axi_rdata_i_reg[31]\(10),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(9),
      Q => \s_axi_rdata_i_reg[31]\(9),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(8),
      Q => \s_axi_rdata_i_reg[31]\(8),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(7),
      Q => \s_axi_rdata_i_reg[31]\(7),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(6),
      Q => \s_axi_rdata_i_reg[31]\(6),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(5),
      Q => \s_axi_rdata_i_reg[31]\(5),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(4),
      Q => \s_axi_rdata_i_reg[31]\(4),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => \s_axi_rdata_i_reg[31]\(3),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => \s_axi_rdata_i_reg[31]\(2),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => \s_axi_rdata_i_reg[31]\(1),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \s_axi_rdata_i_reg[31]\(0),
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_Error_1,
      Q => IP2Bus_Error,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_RdAck_1,
      Q => p_15_out,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_WrAck_1,
      Q => p_16_out,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_ack_delay_6,
      I1 => read_ack_delay_7,
      O => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0\,
      Q => \^ip2bus_rdack_core_reg\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_WrAck_core_reg,
      Q => \^ip2bus_wrack_core_reg_1\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wr_ce_or_reduce_core_cmb,
      Q => ip2Bus_WrAck_core_reg_d1,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0\,
      Q => ip2Bus_WrAck_core_reg,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '1',
      Q => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r_n_0\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r_n_0\,
      Q => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r_n_0\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r_n_0\,
      Q => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r_n_0\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r_n_0\,
      Q => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => s_axi_aclk,
      D => rd_ce_or_reduce_core_cmb,
      Q => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0\,
      Q => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0\,
      R => '0'
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0\,
      I1 => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0\,
      O => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0\,
      Q => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_6_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0\,
      Q => read_ack_delay_6,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_7_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_delay_6,
      Q => read_ack_delay_7,
      R => reset2ip_reset_int
    );
\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I\: entity work.Arty_Z7_20_PmodGYRO_0_0_qspi_mode_0_module
     port map (
      Allow_MODF_Strobe => Allow_MODF_Strobe,
      Allow_Slave_MODF_Strobe => Allow_Slave_MODF_Strobe,
      D(0) => data_in,
      D_0 => D_0,
      E(0) => \USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_18_out\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ => dtr_underrun_int,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ => \FIFO_EXISTS.CLK_CROSS_I_n_42\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_5\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1\ => \FIFO_EXISTS.CLK_CROSS_I_n_8\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10\ => register_Data_slvsel_int,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_11\ => \FIFO_EXISTS.CLK_CROSS_I_n_35\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2\ => \FIFO_EXISTS.CLK_CROSS_I_n_25\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3\ => SPICR_2_MST_N_SLV_to_spi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4\ => spicr_0_loop_to_spi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5\ => spicr_1_spe_to_spi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6\ => spicr_4_cpha_to_spi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7\ => spicr_3_cpol_to_spi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8\ => spicr_9_lsb_to_spi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9\ => \FIFO_EXISTS.CLK_CROSS_I_n_38\,
      \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg_0\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_24\,
      \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_20\,
      \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_0\,
      MODF_strobe0 => MODF_strobe0,
      \OTHER_RATIO_GENERATE.Serial_Dout_reg_0\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_22\,
      Q(7) => data_from_txfifo(0),
      Q(6) => data_from_txfifo(1),
      Q(5) => data_from_txfifo(2),
      Q(4) => data_from_txfifo(3),
      Q(3) => data_from_txfifo(4),
      Q(2) => data_from_txfifo(5),
      Q(1) => data_from_txfifo(6),
      Q(0) => data_from_txfifo(7),
      R => R,
      RESET_SYNC_AX2S_2 => RESET_SYNC_AXI_SPI_CLK_INST_n_2,
      RESET_SYNC_AX2S_2_0 => RESET_SYNC_AXI_SPI_CLK_INST_n_3,
      Rst_to_spi => rst_to_spi_int,
      SPISEL_sync => SPISEL_sync,
      SPIXfer_done_int_d1_reg_0 => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_8\,
      Slave_MODF_strobe0 => Slave_MODF_strobe0,
      drr_Overrun_int => drr_Overrun_int,
      empty_fwft_fb_o_i_reg => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_23\,
      ext_spi_clk => ext_spi_clk,
      \goreg_dm.dout_i_reg[0]\ => \FIFO_EXISTS.TX_FIFO_II_n_2\,
      \goreg_dm.dout_i_reg[7]\(0) => \FIFO_EXISTS.CLK_CROSS_I_n_32\,
      \gpr1.dout_i_reg[7]\(7) => receive_Data_int(0),
      \gpr1.dout_i_reg[7]\(6) => receive_Data_int(1),
      \gpr1.dout_i_reg[7]\(5) => receive_Data_int(2),
      \gpr1.dout_i_reg[7]\(4) => receive_Data_int(3),
      \gpr1.dout_i_reg[7]\(3) => receive_Data_int(4),
      \gpr1.dout_i_reg[7]\(2) => receive_Data_int(5),
      \gpr1.dout_i_reg[7]\(1) => receive_Data_int(6),
      \gpr1.dout_i_reg[7]\(0) => receive_Data_int(7),
      io0_o => io0_o,
      io0_t => io0_t,
      io1_t => io1_t,
      modf_strobe_int => modf_strobe_int,
      \out\ => tx_fifo_empty,
      p_3_out => p_3_out,
      p_6_out => p_6_out,
      prmry_in => Slave_MODF_strobe_cdc_from_spi_int_2,
      ram_full_fb_i_reg => \FIFO_EXISTS.RX_FIFO_II_n_2\,
      ram_full_i_reg => Rx_FIFO_Full_Fifo_org,
      sck_i => sck_i,
      sck_o => sck_o,
      sck_t => sck_t,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain,
      serial_dout_int => serial_dout_int,
      spiXfer_done_int => spiXfer_done_int,
      spisel => spisel,
      spisel_d1_reg => spisel_d1_reg,
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      stop_clock_reg => stop_clock_reg,
      transfer_start_d1 => transfer_start_d1,
      transfer_start_d1_reg_0 => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12\
    );
RESET_SYNC_AXI_SPI_CLK_INST: entity work.Arty_Z7_20_PmodGYRO_0_0_reset_sync_module
     port map (
      \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\ => RESET_SYNC_AXI_SPI_CLK_INST_n_2,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ => SPICR_2_MST_N_SLV_to_spi_clk,
      \OTHER_RATIO_GENERATE.sck_o_int_reg\ => RESET_SYNC_AXI_SPI_CLK_INST_n_3,
      Rst_to_spi => rst_to_spi_int,
      ext_spi_clk => ext_spi_clk,
      p_6_out => p_6_out,
      reset2ip_reset_int => reset2ip_reset_int,
      transfer_start_reg => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12\
    );
SOFT_RESET_I: entity work.Arty_Z7_20_PmodGYRO_0_0_soft_reset
     port map (
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      D(0) => tx_fifo_count(0),
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      \icount_out_reg[0]\ => SOFT_RESET_I_n_2,
      \icount_out_reg[0]_0\ => SOFT_RESET_I_n_3,
      reset2ip_reset_int => reset2ip_reset_int,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      wrack => wrack
    );
\STATUS_REG_MODE_0_GEN.STATUS_SLAVE_SEL_REG_I\: entity work.Arty_Z7_20_PmodGYRO_0_0_qspi_status_slave_sel_reg
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_5\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to_6\,
      \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\ => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\,
      modf_reg_0 => \FIFO_EXISTS.CLK_CROSS_I_n_27\,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi_aclk => s_axi_aclk
    );
ip2Bus_RdAck_intr_reg_hole_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_controller_rd_ce_or_reduce,
      Q => ip2Bus_RdAck_intr_reg_hole_d1,
      R => reset2ip_reset_int
    );
ip2Bus_RdAck_intr_reg_hole_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_RdAck_intr_reg_hole0,
      Q => ip2Bus_RdAck_intr_reg_hole,
      R => reset2ip_reset_int
    );
ip2Bus_WrAck_intr_reg_hole_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg,
      Q => ip2Bus_WrAck_intr_reg_hole_d1,
      R => reset2ip_reset_int
    );
ip2Bus_WrAck_intr_reg_hole_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole0,
      Q => ip2Bus_WrAck_intr_reg_hole,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi_top is
  port (
    AXI_LITE_SPI_rvalid : out STD_LOGIC;
    AXI_LITE_SPI_bvalid : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_SPI_arready : out STD_LOGIC;
    AXI_LITE_SPI_wready : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io1_i : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi_top : entity is "axi_quad_spi_top";
end Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi_top;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi_top is
  signal \CONTROL_REG_I/SPICR_data_int_reg0\ : STD_LOGIC;
  signal \FIFO_EXISTS.FIFO_IF_MODULE_I/Transmit_ip2bus_error0\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/interrupt_wrce_strb\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/intr2bus_rdack0\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_rdack\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_rdack_d1\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_wrack\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_wrack_d1\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_wrack_d11\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in10_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in13_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in16_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in19_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in1_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in4_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in7_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in14_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in17_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in20_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in23_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in26_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in29_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in32_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in35_in\ : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal IP2Bus_Error : STD_LOGIC;
  signal IP2Bus_Error_1 : STD_LOGIC;
  signal IP2Bus_SPICR_Data_int : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_3_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_6_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_8_in\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_10\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_13\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_29\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_33\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_34\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_37\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_40\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_46\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_47\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_48\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_18\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_28\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_52\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_60\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_61\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_71\ : STD_LOGIC;
  signal Rx_FIFO_Empty : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_synced : STD_LOGIC;
  signal \SOFT_RESET_I/reset_trig0\ : STD_LOGIC;
  signal \SOFT_RESET_I/sw_rst_cond\ : STD_LOGIC;
  signal \SOFT_RESET_I/sw_rst_cond_d1\ : STD_LOGIC;
  signal SPISSR_frm_axi_clk : STD_LOGIC;
  signal Tx_FIFO_Empty_SPISR_to_axi_clk : STD_LOGIC;
  signal Tx_FIFO_Full_int : STD_LOGIC;
  signal bus2ip_reset_ipif_inverted : STD_LOGIC;
  signal bus2ip_wrce_int : STD_LOGIC_VECTOR ( 7 to 7 );
  signal data_from_rx_fifo : STD_LOGIC_VECTOR ( 0 to 6 );
  signal intr_controller_rd_ce_or_reduce : STD_LOGIC;
  signal intr_ip2bus_data : STD_LOGIC_VECTOR ( 0 to 0 );
  signal io0_i_sync : STD_LOGIC;
  signal io1_i_sync : STD_LOGIC;
  signal ip2Bus_Data_1 : STD_LOGIC_VECTOR ( 23 to 31 );
  signal ip2Bus_RdAck_core_reg : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg_1 : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1 : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_16_out : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal rd_ce_or_reduce_core_cmb : STD_LOGIC;
  signal rx_fifo_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_fifo_empty_i : STD_LOGIC;
  signal spicr_0_loop_frm_axi_clk : STD_LOGIC;
  signal spicr_1_spe_frm_axi_clk : STD_LOGIC;
  signal spicr_2_mst_n_slv_frm_axi_clk : STD_LOGIC;
  signal spicr_3_cpol_frm_axi_clk : STD_LOGIC;
  signal spicr_4_cpha_frm_axi_clk : STD_LOGIC;
  signal spicr_5_txfifo_rst_frm_axi_clk : STD_LOGIC;
  signal spicr_6_rxfifo_rst_frm_axi_clk : STD_LOGIC;
  signal spicr_7_ss_frm_axi_clk : STD_LOGIC;
  signal spicr_8_tr_inhibit_frm_axi_clk : STD_LOGIC;
  signal spicr_9_lsb_frm_axi_clk : STD_LOGIC;
  signal spisel_d1_reg_to_axi_clk : STD_LOGIC;
  signal sr_3_MODF_int : STD_LOGIC;
  signal tx_fifo_count : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tx_fifo_full : STD_LOGIC;
  signal wr_ce_or_reduce_core_cmb : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of IO0_I_REG : label is "FD";
  attribute box_type : string;
  attribute box_type of IO0_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO1_I_REG : label is "FD";
  attribute box_type of IO1_I_REG : label is "PRIMITIVE";
begin
IO0_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io0_i,
      Q => io0_i_sync,
      R => '0'
    );
IO1_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io1_i,
      Q => io1_i_sync,
      R => '0'
    );
\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I\: entity work.\Arty_Z7_20_PmodGYRO_0_0_axi_lite_ipif__parameterized0\
     port map (
      AXI_LITE_SPI_arready => AXI_LITE_SPI_arready,
      AXI_LITE_SPI_bvalid => AXI_LITE_SPI_bvalid,
      AXI_LITE_SPI_rvalid => AXI_LITE_SPI_rvalid,
      AXI_LITE_SPI_wready => AXI_LITE_SPI_wready,
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\ => spicr_8_tr_inhibit_frm_axi_clk,
      \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\ => spicr_7_ss_frm_axi_clk,
      \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\ => spicr_4_cpha_frm_axi_clk,
      \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\ => spicr_3_cpol_frm_axi_clk,
      \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\ => spicr_1_spe_frm_axi_clk,
      \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ => spicr_0_loop_frm_axi_clk,
      D(10) => intr_ip2bus_data(0),
      D(9) => IP2Bus_SPICR_Data_int(0),
      D(8) => ip2Bus_Data_1(23),
      D(7) => ip2Bus_Data_1(24),
      D(6) => ip2Bus_Data_1(25),
      D(5) => ip2Bus_Data_1(26),
      D(4) => ip2Bus_Data_1(27),
      D(3) => ip2Bus_Data_1(28),
      D(2) => ip2Bus_Data_1(29),
      D(1) => ip2Bus_Data_1(30),
      D(0) => ip2Bus_Data_1(31),
      E(0) => \INTERRUPT_CONTROL_I/irpt_wrack_d11\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_52\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_60\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_61\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ => Tx_FIFO_Empty_SPISR_to_axi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\ => spisel_d1_reg_to_axi_clk,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_18\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_46\,
      IP2Bus_Error => IP2Bus_Error,
      IP2Bus_Error_1 => IP2Bus_Error_1,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(10) => IP2Bus_Data(0),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(9) => IP2Bus_Data(22),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(8) => IP2Bus_Data(23),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(7) => IP2Bus_Data(24),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(6) => IP2Bus_Data(25),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(5) => IP2Bus_Data(26),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(4) => IP2Bus_Data(27),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(3) => IP2Bus_Data(28),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(2) => IP2Bus_Data(29),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(1) => IP2Bus_Data(30),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\(0) => IP2Bus_Data(31),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_29\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_37\,
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_40\,
      Q(8) => \INTERRUPT_CONTROL_I/p_0_in19_in\,
      Q(7) => \INTERRUPT_CONTROL_I/p_0_in16_in\,
      Q(6) => \INTERRUPT_CONTROL_I/p_0_in13_in\,
      Q(5) => \INTERRUPT_CONTROL_I/p_0_in10_in\,
      Q(4) => \INTERRUPT_CONTROL_I/p_0_in7_in\,
      Q(3) => \INTERRUPT_CONTROL_I/p_0_in4_in\,
      Q(2) => \INTERRUPT_CONTROL_I/p_0_in1_in\,
      Q(1) => \INTERRUPT_CONTROL_I/p_0_in\,
      Q(0) => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_71\,
      Receive_ip2bus_error_reg => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_28\,
      SPICR_data_int_reg0 => \CONTROL_REG_I/SPICR_data_int_reg0\,
      \SPICR_data_int_reg[0]\ => spicr_9_lsb_frm_axi_clk,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_48\,
      Transmit_ip2bus_error0 => \FIFO_EXISTS.FIFO_IF_MODULE_I/Transmit_ip2bus_error0\,
      Tx_FIFO_Full_int => Tx_FIFO_Full_int,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(7),
      empty_fwft_i_reg => Rx_FIFO_Empty,
      \goreg_dm.dout_i_reg[7]\(6) => data_from_rx_fifo(0),
      \goreg_dm.dout_i_reg[7]\(5) => data_from_rx_fifo(1),
      \goreg_dm.dout_i_reg[7]\(4) => data_from_rx_fifo(2),
      \goreg_dm.dout_i_reg[7]\(3) => data_from_rx_fifo(3),
      \goreg_dm.dout_i_reg[7]\(2) => data_from_rx_fifo(4),
      \goreg_dm.dout_i_reg[7]\(1) => data_from_rx_fifo(5),
      \goreg_dm.dout_i_reg[7]\(0) => data_from_rx_fifo(6),
      \gpregsm1.curr_fwft_state_reg[1]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_33\,
      \icount_out_reg[1]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_13\,
      interrupt_wrce_strb => \INTERRUPT_CONTROL_I/interrupt_wrce_strb\,
      intr2bus_rdack0 => \INTERRUPT_CONTROL_I/intr2bus_rdack0\,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole_d1_reg => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_10\,
      ipif_glbl_irpt_enable_reg => \INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg\,
      ipif_glbl_irpt_enable_reg_reg => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_47\,
      irpt_rdack => \INTERRUPT_CONTROL_I/irpt_rdack\,
      irpt_rdack_d1 => \INTERRUPT_CONTROL_I/irpt_rdack_d1\,
      irpt_wrack => \INTERRUPT_CONTROL_I/irpt_wrack\,
      irpt_wrack_d1 => \INTERRUPT_CONTROL_I/irpt_wrack_d1\,
      modf_reg => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_34\,
      modf_reg_0 => sr_3_MODF_int,
      \out\ => tx_fifo_full,
      p_15_out => p_15_out,
      p_16_out => p_16_out,
      p_1_in14_in => \INTERRUPT_CONTROL_I/p_1_in14_in\,
      p_1_in17_in => \INTERRUPT_CONTROL_I/p_1_in17_in\,
      p_1_in20_in => \INTERRUPT_CONTROL_I/p_1_in20_in\,
      p_1_in23_in => \INTERRUPT_CONTROL_I/p_1_in23_in\,
      p_1_in26_in => \INTERRUPT_CONTROL_I/p_1_in26_in\,
      p_1_in29_in => \INTERRUPT_CONTROL_I/p_1_in29_in\,
      p_1_in32_in => \INTERRUPT_CONTROL_I/p_1_in32_in\,
      p_1_in35_in => \INTERRUPT_CONTROL_I/p_1_in35_in\,
      p_3_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_3_in\,
      p_4_in => p_4_in,
      p_5_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\,
      p_6_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_6_in\,
      p_8_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_8_in\,
      prmry_in => SPISSR_frm_axi_clk,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      reset_trig0 => \SOFT_RESET_I/reset_trig0\,
      rx_fifo_count(1) => rx_fifo_count(3),
      rx_fifo_count(0) => rx_fifo_count(0),
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(4 downto 0) => s_axi_araddr(4 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(4 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_wdata(4) => s_axi_wdata(10),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      s_axi_wstrb(1 downto 0) => s_axi_wstrb(1 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      scndry_out => Rx_FIFO_Full_Fifo_d1_synced,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      sw_rst_cond => \SOFT_RESET_I/sw_rst_cond\,
      sw_rst_cond_d1 => \SOFT_RESET_I/sw_rst_cond_d1\,
      tx_fifo_count(0) => tx_fifo_count(3),
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I\: entity work.Arty_Z7_20_PmodGYRO_0_0_qspi_core_interface
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_10\,
      Bus_RNW_reg_reg_0 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_13\,
      Bus_RNW_reg_reg_1 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_34\,
      D(10) => intr_ip2bus_data(0),
      D(9) => IP2Bus_SPICR_Data_int(0),
      D(8) => ip2Bus_Data_1(23),
      D(7) => ip2Bus_Data_1(24),
      D(6) => ip2Bus_Data_1(25),
      D(5) => ip2Bus_Data_1(26),
      D(4) => ip2Bus_Data_1(27),
      D(3) => ip2Bus_Data_1(28),
      D(2) => ip2Bus_Data_1(29),
      D(1) => ip2Bus_Data_1(30),
      D(0) => ip2Bus_Data_1(31),
      E(0) => \INTERRUPT_CONTROL_I/irpt_wrack_d11\,
      \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[3]_0\(0) => tx_fifo_count(3),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ => spicr_1_spe_frm_axi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0\ => spicr_3_cpol_frm_axi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1\ => spicr_4_cpha_frm_axi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2\ => spicr_7_ss_frm_axi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3\ => spicr_8_tr_inhibit_frm_axi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4\ => spicr_9_lsb_frm_axi_clk,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5\ => sr_3_MODF_int,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6\ => SPISSR_frm_axi_clk,
      \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_37\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_33\,
      \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_48\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_47\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_46\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_18\,
      \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ => Tx_FIFO_Empty_SPISR_to_axi_clk,
      IP2Bus_Error => IP2Bus_Error,
      IP2Bus_Error_1 => IP2Bus_Error_1,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(8) => \INTERRUPT_CONTROL_I/p_0_in19_in\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(7) => \INTERRUPT_CONTROL_I/p_0_in16_in\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(6) => \INTERRUPT_CONTROL_I/p_0_in13_in\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(5) => \INTERRUPT_CONTROL_I/p_0_in10_in\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(4) => \INTERRUPT_CONTROL_I/p_0_in7_in\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(3) => \INTERRUPT_CONTROL_I/p_0_in4_in\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(2) => \INTERRUPT_CONTROL_I/p_0_in1_in\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(1) => \INTERRUPT_CONTROL_I/p_0_in\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0\(0) => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_71\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_61\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_60\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_52\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg_0\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_28\,
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_40\,
      Q(6) => data_from_rx_fifo(0),
      Q(5) => data_from_rx_fifo(1),
      Q(4) => data_from_rx_fifo(2),
      Q(3) => data_from_rx_fifo(3),
      Q(2) => data_from_rx_fifo(4),
      Q(1) => data_from_rx_fifo(5),
      Q(0) => data_from_rx_fifo(6),
      SPICR_data_int_reg0 => \CONTROL_REG_I/SPICR_data_int_reg0\,
      Transmit_ip2bus_error0 => \FIFO_EXISTS.FIFO_IF_MODULE_I/Transmit_ip2bus_error0\,
      Tx_FIFO_Full_int => Tx_FIFO_Full_int,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(7),
      empty_fwft_i_reg => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_29\,
      ext_spi_clk => ext_spi_clk,
      \gic0.gc1.count_reg[0]\ => tx_fifo_full,
      \icount_out_reg[3]\(1) => rx_fifo_count(3),
      \icount_out_reg[3]\(0) => rx_fifo_count(0),
      interrupt_wrce_strb => \INTERRUPT_CONTROL_I/interrupt_wrce_strb\,
      intr2bus_rdack0 => \INTERRUPT_CONTROL_I/intr2bus_rdack0\,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      io0_i_sync => io0_i_sync,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_i_sync => io1_i_sync,
      io1_t => io1_t,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2intc_irpt => ip2intc_irpt,
      \ip_irpt_enable_reg_reg[8]\ => spisel_d1_reg_to_axi_clk,
      ipif_glbl_irpt_enable_reg => \INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg\,
      irpt_rdack => \INTERRUPT_CONTROL_I/irpt_rdack\,
      irpt_rdack_d1 => \INTERRUPT_CONTROL_I/irpt_rdack_d1\,
      irpt_wrack => \INTERRUPT_CONTROL_I/irpt_wrack\,
      irpt_wrack_d1 => \INTERRUPT_CONTROL_I/irpt_wrack_d1\,
      \out\ => Rx_FIFO_Empty,
      p_15_out => p_15_out,
      p_16_out => p_16_out,
      p_1_in14_in => \INTERRUPT_CONTROL_I/p_1_in14_in\,
      p_1_in17_in => \INTERRUPT_CONTROL_I/p_1_in17_in\,
      p_1_in20_in => \INTERRUPT_CONTROL_I/p_1_in20_in\,
      p_1_in23_in => \INTERRUPT_CONTROL_I/p_1_in23_in\,
      p_1_in26_in => \INTERRUPT_CONTROL_I/p_1_in26_in\,
      p_1_in29_in => \INTERRUPT_CONTROL_I/p_1_in29_in\,
      p_1_in32_in => \INTERRUPT_CONTROL_I/p_1_in32_in\,
      p_1_in35_in => \INTERRUPT_CONTROL_I/p_1_in35_in\,
      p_3_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_3_in\,
      p_4_in => p_4_in,
      p_5_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\,
      p_6_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_6_in\,
      p_8_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_8_in\,
      prmry_in => spicr_0_loop_frm_axi_clk,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      reset_trig0 => \SOFT_RESET_I/reset_trig0\,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i_reg[31]\(10) => IP2Bus_Data(0),
      \s_axi_rdata_i_reg[31]\(9) => IP2Bus_Data(22),
      \s_axi_rdata_i_reg[31]\(8) => IP2Bus_Data(23),
      \s_axi_rdata_i_reg[31]\(7) => IP2Bus_Data(24),
      \s_axi_rdata_i_reg[31]\(6) => IP2Bus_Data(25),
      \s_axi_rdata_i_reg[31]\(5) => IP2Bus_Data(26),
      \s_axi_rdata_i_reg[31]\(4) => IP2Bus_Data(27),
      \s_axi_rdata_i_reg[31]\(3) => IP2Bus_Data(28),
      \s_axi_rdata_i_reg[31]\(2) => IP2Bus_Data(29),
      \s_axi_rdata_i_reg[31]\(1) => IP2Bus_Data(30),
      \s_axi_rdata_i_reg[31]\(0) => IP2Bus_Data(31),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      sck_i => sck_i,
      sck_o => sck_o,
      sck_t => sck_t,
      scndry_out => Rx_FIFO_Full_Fifo_d1_synced,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spisel => spisel,
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      sw_rst_cond => \SOFT_RESET_I/sw_rst_cond\,
      sw_rst_cond_d1 => \SOFT_RESET_I/sw_rst_cond_d1\,
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    io0_1_i : in STD_LOGIC;
    io0_1_o : out STD_LOGIC;
    io0_1_t : out STD_LOGIC;
    io1_1_i : in STD_LOGIC;
    io1_1_o : out STD_LOGIC;
    io1_1_t : out STD_LOGIC;
    io2_1_i : in STD_LOGIC;
    io2_1_o : out STD_LOGIC;
    io2_1_t : out STD_LOGIC;
    io3_1_i : in STD_LOGIC;
    io3_1_o : out STD_LOGIC;
    io3_1_t : out STD_LOGIC;
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ss_1_i : in STD_LOGIC;
    ss_1_o : out STD_LOGIC;
    ss_1_t : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    clk : in STD_LOGIC;
    gsr : in STD_LOGIC;
    gts : in STD_LOGIC;
    keyclearb : in STD_LOGIC;
    usrcclkts : in STD_LOGIC;
    usrdoneo : in STD_LOGIC;
    usrdonets : in STD_LOGIC;
    pack : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute Async_Clk : integer;
  attribute Async_Clk of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 1;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is "zynq";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 16;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 16;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 1;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is "zynq";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 24;
  attribute C_S_AXI4_BASEADDR : integer;
  attribute C_S_AXI4_BASEADDR of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is -1;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 32;
  attribute C_S_AXI4_HIGHADDR : integer;
  attribute C_S_AXI4_HIGHADDR of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi : entity is "axi_quad_spi";
end Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^io0_o\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  cfgclk <= \<const0>\;
  cfgmclk <= \<const0>\;
  eos <= \<const0>\;
  io0_1_o <= \<const0>\;
  io0_1_t <= \<const0>\;
  io0_o <= \^io0_o\;
  io1_1_o <= \<const0>\;
  io1_1_t <= \<const0>\;
  io1_o <= \^io0_o\;
  io2_1_o <= \<const0>\;
  io2_1_t <= \<const0>\;
  io2_o <= \<const0>\;
  io2_t <= \<const1>\;
  io3_1_o <= \<const0>\;
  io3_1_t <= \<const0>\;
  io3_o <= \<const0>\;
  io3_t <= \<const1>\;
  preq <= \<const0>\;
  s_axi4_arready <= \<const0>\;
  s_axi4_awready <= \<const0>\;
  s_axi4_bid(0) <= \<const0>\;
  s_axi4_bresp(1) <= \<const0>\;
  s_axi4_bresp(0) <= \<const0>\;
  s_axi4_bvalid <= \<const0>\;
  s_axi4_rdata(31) <= \<const0>\;
  s_axi4_rdata(30) <= \<const0>\;
  s_axi4_rdata(29) <= \<const0>\;
  s_axi4_rdata(28) <= \<const0>\;
  s_axi4_rdata(27) <= \<const0>\;
  s_axi4_rdata(26) <= \<const0>\;
  s_axi4_rdata(25) <= \<const0>\;
  s_axi4_rdata(24) <= \<const0>\;
  s_axi4_rdata(23) <= \<const0>\;
  s_axi4_rdata(22) <= \<const0>\;
  s_axi4_rdata(21) <= \<const0>\;
  s_axi4_rdata(20) <= \<const0>\;
  s_axi4_rdata(19) <= \<const0>\;
  s_axi4_rdata(18) <= \<const0>\;
  s_axi4_rdata(17) <= \<const0>\;
  s_axi4_rdata(16) <= \<const0>\;
  s_axi4_rdata(15) <= \<const0>\;
  s_axi4_rdata(14) <= \<const0>\;
  s_axi4_rdata(13) <= \<const0>\;
  s_axi4_rdata(12) <= \<const0>\;
  s_axi4_rdata(11) <= \<const0>\;
  s_axi4_rdata(10) <= \<const0>\;
  s_axi4_rdata(9) <= \<const0>\;
  s_axi4_rdata(8) <= \<const0>\;
  s_axi4_rdata(7) <= \<const0>\;
  s_axi4_rdata(6) <= \<const0>\;
  s_axi4_rdata(5) <= \<const0>\;
  s_axi4_rdata(4) <= \<const0>\;
  s_axi4_rdata(3) <= \<const0>\;
  s_axi4_rdata(2) <= \<const0>\;
  s_axi4_rdata(1) <= \<const0>\;
  s_axi4_rdata(0) <= \<const0>\;
  s_axi4_rid(0) <= \<const0>\;
  s_axi4_rlast <= \<const0>\;
  s_axi4_rresp(1) <= \<const0>\;
  s_axi4_rresp(0) <= \<const0>\;
  s_axi4_rvalid <= \<const0>\;
  s_axi4_wready <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9 downto 0) <= \^s_axi_rdata\(9 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
  ss_1_o <= \<const0>\;
  ss_1_t <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\NO_DUAL_QUAD_MODE.QSPI_NORMAL\: entity work.Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi_top
     port map (
      AXI_LITE_SPI_arready => s_axi_arready,
      AXI_LITE_SPI_bvalid => s_axi_bvalid,
      AXI_LITE_SPI_rvalid => s_axi_rvalid,
      AXI_LITE_SPI_wready => \^s_axi_wready\,
      ext_spi_clk => ext_spi_clk,
      io0_i => io0_i,
      io0_o => \^io0_o\,
      io0_t => io0_t,
      io1_i => io1_i,
      io1_t => io1_t,
      ip2intc_irpt => ip2intc_irpt,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(4 downto 0) => s_axi_araddr(6 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(6 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_rdata(10) => \^s_axi_rdata\(31),
      s_axi_rdata(9 downto 0) => \^s_axi_rdata\(9 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_wdata(10) => s_axi_wdata(31),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      s_axi_wstrb(1) => s_axi_wstrb(3),
      s_axi_wstrb(0) => s_axi_wstrb(0),
      s_axi_wvalid => s_axi_wvalid,
      sck_i => sck_i,
      sck_o => sck_o,
      sck_t => sck_t,
      spisel => spisel,
      ss_o(0) => ss_o(0),
      ss_t => ss_t
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_quad_spi_0_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_quad_spi_0_0 : entity is "PmodGYRO_axi_quad_spi_0_0,axi_quad_spi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_quad_spi_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_quad_spi_0_0 : entity is "PmodGYRO_axi_quad_spi_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_quad_spi_0_0 : entity is "axi_quad_spi,Vivado 2017.1_sdx";
end Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_quad_spi_0_0;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_quad_spi_0_0 is
  signal NLW_U0_cfgclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_cfgmclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_eos_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io0_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io0_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_preq_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi4_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi4_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi4_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi4_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute Async_Clk : integer;
  attribute Async_Clk of U0 : label is 1;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of U0 : label is 16;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of U0 : label is 0;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of U0 : label is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of U0 : label is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of U0 : label is 16;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of U0 : label is 0;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of U0 : label is 1;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of U0 : label is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of U0 : label is 0;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of U0 : label is "zynq";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of U0 : label is 24;
  attribute C_S_AXI4_BASEADDR : integer;
  attribute C_S_AXI4_BASEADDR of U0 : label is -1;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI4_HIGHADDR : integer;
  attribute C_S_AXI4_HIGHADDR of U0 : label is 0;
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of U0 : label is 0;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of U0 : label is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of U0 : label is 0;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of U0 : label is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.Arty_Z7_20_PmodGYRO_0_0_axi_quad_spi
     port map (
      cfgclk => NLW_U0_cfgclk_UNCONNECTED,
      cfgmclk => NLW_U0_cfgmclk_UNCONNECTED,
      clk => '0',
      eos => NLW_U0_eos_UNCONNECTED,
      ext_spi_clk => ext_spi_clk,
      gsr => '0',
      gts => '0',
      io0_1_i => '0',
      io0_1_o => NLW_U0_io0_1_o_UNCONNECTED,
      io0_1_t => NLW_U0_io0_1_t_UNCONNECTED,
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_1_i => '0',
      io1_1_o => NLW_U0_io1_1_o_UNCONNECTED,
      io1_1_t => NLW_U0_io1_1_t_UNCONNECTED,
      io1_i => io1_i,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_1_i => '0',
      io2_1_o => NLW_U0_io2_1_o_UNCONNECTED,
      io2_1_t => NLW_U0_io2_1_t_UNCONNECTED,
      io2_i => '0',
      io2_o => NLW_U0_io2_o_UNCONNECTED,
      io2_t => NLW_U0_io2_t_UNCONNECTED,
      io3_1_i => '0',
      io3_1_o => NLW_U0_io3_1_o_UNCONNECTED,
      io3_1_t => NLW_U0_io3_1_t_UNCONNECTED,
      io3_i => '0',
      io3_o => NLW_U0_io3_o_UNCONNECTED,
      io3_t => NLW_U0_io3_t_UNCONNECTED,
      ip2intc_irpt => ip2intc_irpt,
      keyclearb => '0',
      pack => '0',
      preq => NLW_U0_preq_UNCONNECTED,
      s_axi4_aclk => '0',
      s_axi4_araddr(23 downto 0) => B"000000000000000000000000",
      s_axi4_arburst(1 downto 0) => B"00",
      s_axi4_arcache(3 downto 0) => B"0000",
      s_axi4_aresetn => '0',
      s_axi4_arid(0) => '0',
      s_axi4_arlen(7 downto 0) => B"00000000",
      s_axi4_arlock => '0',
      s_axi4_arprot(2 downto 0) => B"000",
      s_axi4_arready => NLW_U0_s_axi4_arready_UNCONNECTED,
      s_axi4_arsize(2 downto 0) => B"000",
      s_axi4_arvalid => '0',
      s_axi4_awaddr(23 downto 0) => B"000000000000000000000000",
      s_axi4_awburst(1 downto 0) => B"00",
      s_axi4_awcache(3 downto 0) => B"0000",
      s_axi4_awid(0) => '0',
      s_axi4_awlen(7 downto 0) => B"00000000",
      s_axi4_awlock => '0',
      s_axi4_awprot(2 downto 0) => B"000",
      s_axi4_awready => NLW_U0_s_axi4_awready_UNCONNECTED,
      s_axi4_awsize(2 downto 0) => B"000",
      s_axi4_awvalid => '0',
      s_axi4_bid(0) => NLW_U0_s_axi4_bid_UNCONNECTED(0),
      s_axi4_bready => '0',
      s_axi4_bresp(1 downto 0) => NLW_U0_s_axi4_bresp_UNCONNECTED(1 downto 0),
      s_axi4_bvalid => NLW_U0_s_axi4_bvalid_UNCONNECTED,
      s_axi4_rdata(31 downto 0) => NLW_U0_s_axi4_rdata_UNCONNECTED(31 downto 0),
      s_axi4_rid(0) => NLW_U0_s_axi4_rid_UNCONNECTED(0),
      s_axi4_rlast => NLW_U0_s_axi4_rlast_UNCONNECTED,
      s_axi4_rready => '0',
      s_axi4_rresp(1 downto 0) => NLW_U0_s_axi4_rresp_UNCONNECTED(1 downto 0),
      s_axi4_rvalid => NLW_U0_s_axi4_rvalid_UNCONNECTED,
      s_axi4_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi4_wlast => '0',
      s_axi4_wready => NLW_U0_s_axi4_wready_UNCONNECTED,
      s_axi4_wstrb(3 downto 0) => B"0000",
      s_axi4_wvalid => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sck_i => sck_i,
      sck_o => sck_o,
      sck_t => sck_t,
      spisel => '1',
      ss_1_i => '0',
      ss_1_o => NLW_U0_ss_1_o_UNCONNECTED,
      ss_1_t => NLW_U0_ss_1_t_UNCONNECTED,
      ss_i(0) => ss_i(0),
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      usrcclkts => '0',
      usrdoneo => '1',
      usrdonets => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0_PmodGYRO is
  port (
    AXI_LITE_GPIO_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_GPIO_arready : out STD_LOGIC;
    AXI_LITE_GPIO_arvalid : in STD_LOGIC;
    AXI_LITE_GPIO_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_GPIO_awready : out STD_LOGIC;
    AXI_LITE_GPIO_awvalid : in STD_LOGIC;
    AXI_LITE_GPIO_bready : in STD_LOGIC;
    AXI_LITE_GPIO_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_GPIO_bvalid : out STD_LOGIC;
    AXI_LITE_GPIO_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_GPIO_rready : in STD_LOGIC;
    AXI_LITE_GPIO_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_GPIO_rvalid : out STD_LOGIC;
    AXI_LITE_GPIO_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_GPIO_wready : out STD_LOGIC;
    AXI_LITE_GPIO_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_GPIO_wvalid : in STD_LOGIC;
    AXI_LITE_SPI_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    AXI_LITE_SPI_arready : out STD_LOGIC;
    AXI_LITE_SPI_arvalid : in STD_LOGIC;
    AXI_LITE_SPI_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    AXI_LITE_SPI_awready : out STD_LOGIC;
    AXI_LITE_SPI_awvalid : in STD_LOGIC;
    AXI_LITE_SPI_bready : in STD_LOGIC;
    AXI_LITE_SPI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_SPI_bvalid : out STD_LOGIC;
    AXI_LITE_SPI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_SPI_rready : in STD_LOGIC;
    AXI_LITE_SPI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_SPI_rvalid : out STD_LOGIC;
    AXI_LITE_SPI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_SPI_wready : out STD_LOGIC;
    AXI_LITE_SPI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_SPI_wvalid : in STD_LOGIC;
    Pmod_out_pin10_i : in STD_LOGIC;
    Pmod_out_pin10_o : out STD_LOGIC;
    Pmod_out_pin10_t : out STD_LOGIC;
    Pmod_out_pin1_i : in STD_LOGIC;
    Pmod_out_pin1_o : out STD_LOGIC;
    Pmod_out_pin1_t : out STD_LOGIC;
    Pmod_out_pin2_i : in STD_LOGIC;
    Pmod_out_pin2_o : out STD_LOGIC;
    Pmod_out_pin2_t : out STD_LOGIC;
    Pmod_out_pin3_i : in STD_LOGIC;
    Pmod_out_pin3_o : out STD_LOGIC;
    Pmod_out_pin3_t : out STD_LOGIC;
    Pmod_out_pin4_i : in STD_LOGIC;
    Pmod_out_pin4_o : out STD_LOGIC;
    Pmod_out_pin4_t : out STD_LOGIC;
    Pmod_out_pin7_i : in STD_LOGIC;
    Pmod_out_pin7_o : out STD_LOGIC;
    Pmod_out_pin7_t : out STD_LOGIC;
    Pmod_out_pin8_i : in STD_LOGIC;
    Pmod_out_pin8_o : out STD_LOGIC;
    Pmod_out_pin8_t : out STD_LOGIC;
    Pmod_out_pin9_i : in STD_LOGIC;
    Pmod_out_pin9_o : out STD_LOGIC;
    Pmod_out_pin9_t : out STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO : entity is "PmodGYRO";
end Arty_Z7_20_PmodGYRO_0_0_PmodGYRO;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0_PmodGYRO is
  signal axi_gpio_0_GPIO_TRI_I : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_gpio_0_GPIO_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_gpio_0_GPIO_TRI_T : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_quad_spi_0_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_T : STD_LOGIC;
  signal NLW_axi_quad_spi_0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_gpio_0 : label is "PmodGYRO_axi_gpio_0_0,axi_gpio,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_gpio_0 : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of axi_gpio_0 : label is "axi_gpio,Vivado 2017.1_sdx";
  attribute CHECK_LICENSE_TYPE of axi_quad_spi_0 : label is "PmodGYRO_axi_quad_spi_0_0,axi_quad_spi,{}";
  attribute downgradeipidentifiedwarnings of axi_quad_spi_0 : label is "yes";
  attribute x_core_info of axi_quad_spi_0 : label is "axi_quad_spi,Vivado 2017.1_sdx";
  attribute CHECK_LICENSE_TYPE of pmod_bridge_0 : label is "PmodGYRO_pmod_bridge_0_0,pmod_concat,{}";
  attribute downgradeipidentifiedwarnings of pmod_bridge_0 : label is "yes";
  attribute x_core_info of pmod_bridge_0 : label is "pmod_concat,Vivado 2017.1_sdx";
begin
axi_gpio_0: entity work.Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_gpio_0_0
     port map (
      gpio_io_i(3 downto 0) => axi_gpio_0_GPIO_TRI_I(3 downto 0),
      gpio_io_o(3 downto 0) => axi_gpio_0_GPIO_TRI_O(3 downto 0),
      gpio_io_t(3 downto 0) => axi_gpio_0_GPIO_TRI_T(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => AXI_LITE_GPIO_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => AXI_LITE_GPIO_arready,
      s_axi_arvalid => AXI_LITE_GPIO_arvalid,
      s_axi_awaddr(8 downto 0) => AXI_LITE_GPIO_awaddr(8 downto 0),
      s_axi_awready => AXI_LITE_GPIO_awready,
      s_axi_awvalid => AXI_LITE_GPIO_awvalid,
      s_axi_bready => AXI_LITE_GPIO_bready,
      s_axi_bresp(1 downto 0) => AXI_LITE_GPIO_bresp(1 downto 0),
      s_axi_bvalid => AXI_LITE_GPIO_bvalid,
      s_axi_rdata(31 downto 0) => AXI_LITE_GPIO_rdata(31 downto 0),
      s_axi_rready => AXI_LITE_GPIO_rready,
      s_axi_rresp(1 downto 0) => AXI_LITE_GPIO_rresp(1 downto 0),
      s_axi_rvalid => AXI_LITE_GPIO_rvalid,
      s_axi_wdata(31 downto 0) => AXI_LITE_GPIO_wdata(31 downto 0),
      s_axi_wready => AXI_LITE_GPIO_wready,
      s_axi_wstrb(3 downto 0) => AXI_LITE_GPIO_wstrb(3 downto 0),
      s_axi_wvalid => AXI_LITE_GPIO_wvalid
    );
axi_quad_spi_0: entity work.Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_axi_quad_spi_0_0
     port map (
      ext_spi_clk => ext_spi_clk,
      io0_i => axi_quad_spi_0_SPI_0_IO0_I,
      io0_o => axi_quad_spi_0_SPI_0_IO0_O,
      io0_t => axi_quad_spi_0_SPI_0_IO0_T,
      io1_i => axi_quad_spi_0_SPI_0_IO1_I,
      io1_o => axi_quad_spi_0_SPI_0_IO1_O,
      io1_t => axi_quad_spi_0_SPI_0_IO1_T,
      ip2intc_irpt => NLW_axi_quad_spi_0_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => AXI_LITE_SPI_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => AXI_LITE_SPI_arready,
      s_axi_arvalid => AXI_LITE_SPI_arvalid,
      s_axi_awaddr(6 downto 0) => AXI_LITE_SPI_awaddr(6 downto 0),
      s_axi_awready => AXI_LITE_SPI_awready,
      s_axi_awvalid => AXI_LITE_SPI_awvalid,
      s_axi_bready => AXI_LITE_SPI_bready,
      s_axi_bresp(1 downto 0) => AXI_LITE_SPI_bresp(1 downto 0),
      s_axi_bvalid => AXI_LITE_SPI_bvalid,
      s_axi_rdata(31 downto 0) => AXI_LITE_SPI_rdata(31 downto 0),
      s_axi_rready => AXI_LITE_SPI_rready,
      s_axi_rresp(1 downto 0) => AXI_LITE_SPI_rresp(1 downto 0),
      s_axi_rvalid => AXI_LITE_SPI_rvalid,
      s_axi_wdata(31 downto 0) => AXI_LITE_SPI_wdata(31 downto 0),
      s_axi_wready => AXI_LITE_SPI_wready,
      s_axi_wstrb(3 downto 0) => AXI_LITE_SPI_wstrb(3 downto 0),
      s_axi_wvalid => AXI_LITE_SPI_wvalid,
      sck_i => axi_quad_spi_0_SPI_0_SCK_I,
      sck_o => axi_quad_spi_0_SPI_0_SCK_O,
      sck_t => axi_quad_spi_0_SPI_0_SCK_T,
      ss_i(0) => axi_quad_spi_0_SPI_0_SS_I,
      ss_o(0) => axi_quad_spi_0_SPI_0_SS_O,
      ss_t => axi_quad_spi_0_SPI_0_SS_T
    );
pmod_bridge_0: entity work.Arty_Z7_20_PmodGYRO_0_0_PmodGYRO_pmod_bridge_0_0
     port map (
      in0_I => axi_quad_spi_0_SPI_0_SS_I,
      in0_O => axi_quad_spi_0_SPI_0_SS_O,
      in0_T => axi_quad_spi_0_SPI_0_SS_T,
      in1_I => axi_quad_spi_0_SPI_0_IO0_I,
      in1_O => axi_quad_spi_0_SPI_0_IO0_O,
      in1_T => axi_quad_spi_0_SPI_0_IO0_T,
      in2_I => axi_quad_spi_0_SPI_0_IO1_I,
      in2_O => axi_quad_spi_0_SPI_0_IO1_O,
      in2_T => axi_quad_spi_0_SPI_0_IO1_T,
      in3_I => axi_quad_spi_0_SPI_0_SCK_I,
      in3_O => axi_quad_spi_0_SPI_0_SCK_O,
      in3_T => axi_quad_spi_0_SPI_0_SCK_T,
      in_bottom_bus_I(3 downto 0) => axi_gpio_0_GPIO_TRI_I(3 downto 0),
      in_bottom_bus_O(3 downto 0) => axi_gpio_0_GPIO_TRI_O(3 downto 0),
      in_bottom_bus_T(3 downto 0) => axi_gpio_0_GPIO_TRI_T(3 downto 0),
      out0_I => Pmod_out_pin1_i,
      out0_O => Pmod_out_pin1_o,
      out0_T => Pmod_out_pin1_t,
      out1_I => Pmod_out_pin2_i,
      out1_O => Pmod_out_pin2_o,
      out1_T => Pmod_out_pin2_t,
      out2_I => Pmod_out_pin3_i,
      out2_O => Pmod_out_pin3_o,
      out2_T => Pmod_out_pin3_t,
      out3_I => Pmod_out_pin4_i,
      out3_O => Pmod_out_pin4_o,
      out3_T => Pmod_out_pin4_t,
      out4_I => Pmod_out_pin7_i,
      out4_O => Pmod_out_pin7_o,
      out4_T => Pmod_out_pin7_t,
      out5_I => Pmod_out_pin8_i,
      out5_O => Pmod_out_pin8_o,
      out5_T => Pmod_out_pin8_t,
      out6_I => Pmod_out_pin9_i,
      out6_O => Pmod_out_pin9_o,
      out6_T => Pmod_out_pin9_t,
      out7_I => Pmod_out_pin10_i,
      out7_O => Pmod_out_pin10_o,
      out7_T => Pmod_out_pin10_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_PmodGYRO_0_0 is
  port (
    AXI_LITE_GPIO_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_GPIO_arready : out STD_LOGIC;
    AXI_LITE_GPIO_arvalid : in STD_LOGIC;
    AXI_LITE_GPIO_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_GPIO_awready : out STD_LOGIC;
    AXI_LITE_GPIO_awvalid : in STD_LOGIC;
    AXI_LITE_GPIO_bready : in STD_LOGIC;
    AXI_LITE_GPIO_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_GPIO_bvalid : out STD_LOGIC;
    AXI_LITE_GPIO_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_GPIO_rready : in STD_LOGIC;
    AXI_LITE_GPIO_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_GPIO_rvalid : out STD_LOGIC;
    AXI_LITE_GPIO_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_GPIO_wready : out STD_LOGIC;
    AXI_LITE_GPIO_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_GPIO_wvalid : in STD_LOGIC;
    AXI_LITE_SPI_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    AXI_LITE_SPI_arready : out STD_LOGIC;
    AXI_LITE_SPI_arvalid : in STD_LOGIC;
    AXI_LITE_SPI_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    AXI_LITE_SPI_awready : out STD_LOGIC;
    AXI_LITE_SPI_awvalid : in STD_LOGIC;
    AXI_LITE_SPI_bready : in STD_LOGIC;
    AXI_LITE_SPI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_SPI_bvalid : out STD_LOGIC;
    AXI_LITE_SPI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_SPI_rready : in STD_LOGIC;
    AXI_LITE_SPI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_SPI_rvalid : out STD_LOGIC;
    AXI_LITE_SPI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_SPI_wready : out STD_LOGIC;
    AXI_LITE_SPI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_SPI_wvalid : in STD_LOGIC;
    Pmod_out_pin10_i : in STD_LOGIC;
    Pmod_out_pin10_o : out STD_LOGIC;
    Pmod_out_pin10_t : out STD_LOGIC;
    Pmod_out_pin1_i : in STD_LOGIC;
    Pmod_out_pin1_o : out STD_LOGIC;
    Pmod_out_pin1_t : out STD_LOGIC;
    Pmod_out_pin2_i : in STD_LOGIC;
    Pmod_out_pin2_o : out STD_LOGIC;
    Pmod_out_pin2_t : out STD_LOGIC;
    Pmod_out_pin3_i : in STD_LOGIC;
    Pmod_out_pin3_o : out STD_LOGIC;
    Pmod_out_pin3_t : out STD_LOGIC;
    Pmod_out_pin4_i : in STD_LOGIC;
    Pmod_out_pin4_o : out STD_LOGIC;
    Pmod_out_pin4_t : out STD_LOGIC;
    Pmod_out_pin7_i : in STD_LOGIC;
    Pmod_out_pin7_o : out STD_LOGIC;
    Pmod_out_pin7_t : out STD_LOGIC;
    Pmod_out_pin8_i : in STD_LOGIC;
    Pmod_out_pin8_o : out STD_LOGIC;
    Pmod_out_pin8_t : out STD_LOGIC;
    Pmod_out_pin9_i : in STD_LOGIC;
    Pmod_out_pin9_o : out STD_LOGIC;
    Pmod_out_pin9_t : out STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Arty_Z7_20_PmodGYRO_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Arty_Z7_20_PmodGYRO_0_0 : entity is "Arty_Z7_20_PmodGYRO_0_0,PmodGYRO,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Arty_Z7_20_PmodGYRO_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Arty_Z7_20_PmodGYRO_0_0 : entity is "PmodGYRO,Vivado 2017.1_sdx";
end Arty_Z7_20_PmodGYRO_0_0;

architecture STRUCTURE of Arty_Z7_20_PmodGYRO_0_0 is
begin
inst: entity work.Arty_Z7_20_PmodGYRO_0_0_PmodGYRO
     port map (
      AXI_LITE_GPIO_araddr(8 downto 0) => AXI_LITE_GPIO_araddr(8 downto 0),
      AXI_LITE_GPIO_arready => AXI_LITE_GPIO_arready,
      AXI_LITE_GPIO_arvalid => AXI_LITE_GPIO_arvalid,
      AXI_LITE_GPIO_awaddr(8 downto 0) => AXI_LITE_GPIO_awaddr(8 downto 0),
      AXI_LITE_GPIO_awready => AXI_LITE_GPIO_awready,
      AXI_LITE_GPIO_awvalid => AXI_LITE_GPIO_awvalid,
      AXI_LITE_GPIO_bready => AXI_LITE_GPIO_bready,
      AXI_LITE_GPIO_bresp(1 downto 0) => AXI_LITE_GPIO_bresp(1 downto 0),
      AXI_LITE_GPIO_bvalid => AXI_LITE_GPIO_bvalid,
      AXI_LITE_GPIO_rdata(31 downto 0) => AXI_LITE_GPIO_rdata(31 downto 0),
      AXI_LITE_GPIO_rready => AXI_LITE_GPIO_rready,
      AXI_LITE_GPIO_rresp(1 downto 0) => AXI_LITE_GPIO_rresp(1 downto 0),
      AXI_LITE_GPIO_rvalid => AXI_LITE_GPIO_rvalid,
      AXI_LITE_GPIO_wdata(31 downto 0) => AXI_LITE_GPIO_wdata(31 downto 0),
      AXI_LITE_GPIO_wready => AXI_LITE_GPIO_wready,
      AXI_LITE_GPIO_wstrb(3 downto 0) => AXI_LITE_GPIO_wstrb(3 downto 0),
      AXI_LITE_GPIO_wvalid => AXI_LITE_GPIO_wvalid,
      AXI_LITE_SPI_araddr(6 downto 0) => AXI_LITE_SPI_araddr(6 downto 0),
      AXI_LITE_SPI_arready => AXI_LITE_SPI_arready,
      AXI_LITE_SPI_arvalid => AXI_LITE_SPI_arvalid,
      AXI_LITE_SPI_awaddr(6 downto 0) => AXI_LITE_SPI_awaddr(6 downto 0),
      AXI_LITE_SPI_awready => AXI_LITE_SPI_awready,
      AXI_LITE_SPI_awvalid => AXI_LITE_SPI_awvalid,
      AXI_LITE_SPI_bready => AXI_LITE_SPI_bready,
      AXI_LITE_SPI_bresp(1 downto 0) => AXI_LITE_SPI_bresp(1 downto 0),
      AXI_LITE_SPI_bvalid => AXI_LITE_SPI_bvalid,
      AXI_LITE_SPI_rdata(31 downto 0) => AXI_LITE_SPI_rdata(31 downto 0),
      AXI_LITE_SPI_rready => AXI_LITE_SPI_rready,
      AXI_LITE_SPI_rresp(1 downto 0) => AXI_LITE_SPI_rresp(1 downto 0),
      AXI_LITE_SPI_rvalid => AXI_LITE_SPI_rvalid,
      AXI_LITE_SPI_wdata(31 downto 0) => AXI_LITE_SPI_wdata(31 downto 0),
      AXI_LITE_SPI_wready => AXI_LITE_SPI_wready,
      AXI_LITE_SPI_wstrb(3 downto 0) => AXI_LITE_SPI_wstrb(3 downto 0),
      AXI_LITE_SPI_wvalid => AXI_LITE_SPI_wvalid,
      Pmod_out_pin10_i => Pmod_out_pin10_i,
      Pmod_out_pin10_o => Pmod_out_pin10_o,
      Pmod_out_pin10_t => Pmod_out_pin10_t,
      Pmod_out_pin1_i => Pmod_out_pin1_i,
      Pmod_out_pin1_o => Pmod_out_pin1_o,
      Pmod_out_pin1_t => Pmod_out_pin1_t,
      Pmod_out_pin2_i => Pmod_out_pin2_i,
      Pmod_out_pin2_o => Pmod_out_pin2_o,
      Pmod_out_pin2_t => Pmod_out_pin2_t,
      Pmod_out_pin3_i => Pmod_out_pin3_i,
      Pmod_out_pin3_o => Pmod_out_pin3_o,
      Pmod_out_pin3_t => Pmod_out_pin3_t,
      Pmod_out_pin4_i => Pmod_out_pin4_i,
      Pmod_out_pin4_o => Pmod_out_pin4_o,
      Pmod_out_pin4_t => Pmod_out_pin4_t,
      Pmod_out_pin7_i => Pmod_out_pin7_i,
      Pmod_out_pin7_o => Pmod_out_pin7_o,
      Pmod_out_pin7_t => Pmod_out_pin7_t,
      Pmod_out_pin8_i => Pmod_out_pin8_i,
      Pmod_out_pin8_o => Pmod_out_pin8_o,
      Pmod_out_pin8_t => Pmod_out_pin8_t,
      Pmod_out_pin9_i => Pmod_out_pin9_i,
      Pmod_out_pin9_o => Pmod_out_pin9_o,
      Pmod_out_pin9_t => Pmod_out_pin9_t,
      ext_spi_clk => ext_spi_clk,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
end STRUCTURE;
