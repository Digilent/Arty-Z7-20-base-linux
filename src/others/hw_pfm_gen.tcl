#SDSoC Platform hardware metadata creation script

#First run source -notrace <SDSoC Install dir>/scripts/vivado/sdsoc_pfm.tcl

set pfm [sdsoc::create_pfm Arty_Z7_20_hw.pfm]
sdsoc::pfm_name $pfm "digilentinc.com" "xd" "Arty_Z7_20" "1.0"
sdsoc::pfm_description $pfm "Arty Z7-20 Board"
sdsoc::pfm_clock $pfm FCLK_CLK0 processing_system7_0 0 true rst_processing_system7_0_100M
sdsoc::pfm_clock $pfm FCLK_CLK1 processing_system7_0 1 false rst_processing_system7_0_142M
sdsoc::pfm_clock $pfm FCLK_CLK2 processing_system7_0 2 false proc_sys_reset_2
sdsoc::pfm_clock $pfm FCLK_CLK3 processing_system7_0 3 false proc_sys_reset_3
sdsoc::pfm_clock $pfm clk_out1 clk_wiz_0 4 false proc_sys_reset_sysclk
sdsoc::pfm_axi_port $pfm M_AXI_GP1 processing_system7_0 M_AXI_GP
sdsoc::pfm_axi_port $pfm S_AXI_ACP processing_system7_0 S_AXI_ACP
sdsoc::pfm_axi_port $pfm S_AXI_HP2 processing_system7_0 S_AXI_HP
sdsoc::pfm_axi_port $pfm S_AXI_HP3 processing_system7_0 S_AXI_HP
for {set i 7} {$i < 16} {incr i} {
sdsoc::pfm_irq $pfm In$i xlconcat_0
}
sdsoc::pfm_iodev $pfm S_AXI axi_gpio_sw uio
sdsoc::pfm_iodev $pfm S_AXI axi_gpio_led uio
sdsoc::generate_hw_pfm $pfm
