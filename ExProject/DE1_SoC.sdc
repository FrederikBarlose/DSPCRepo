#**************************************************************
# Altera DE1-SoC SDC settings
# Users are recommended to modify this file to match users logic.
#**************************************************************

# For RAM Interface spec see :
# https://www.altera.com/en_US/pdfs/literature/an/an433.pdf



#**************************************************************
# Create Clock
#**************************************************************
create_clock -period 20 [get_ports CLOCK_50]
#create_clock -period 20 [get_ports CLOCK2_50]
#create_clock -period 20 [get_ports CLOCK3_50]
#create_clock -period 20 [get_ports CLOCK4_50]

#create_clock -period "27 MHz"  -name tv_27m [get_ports TD_CLK27]
#create_clock -period "143 MHz" -name clk_dram [get_ports DRAM_CLK]


# AUDIO : 48kHz 384fs 32-bit data
#create_clock -period "18.432 MHz" -name clk_audxck [get_ports AUD_XCK]
#create_clock -period "1.536 MHz" -name clk_audbck [get_ports AUD_BCLK]
# VGA : 640x480@60Hz
#create_clock -period "25.18 MHz" -name clk_vga [get_ports VGA_CLK]
# VGA : 800x600@60Hz
#create_clock -period "40.0 MHz" -name clk_vga [get_ports VGA_CLK]
# VGA : 1024x768@60Hz
#create_clock -period "65.0 MHz" -name clk_vga [get_ports VGA_CLK]
# VGA : 1280x1024@60Hz
#create_clock -period "108.0 MHz" -name clk_vga [get_ports VGA_CLK]


# for enhancing USB BlasterII to be reliable, 25MHz
create_clock -name {altera_reserved_tck} -period 40 {altera_reserved_tck}
set_input_delay -clock altera_reserved_tck -clock_fall 3 [get_ports altera_reserved_tdi]
set_input_delay -clock altera_reserved_tck -clock_fall 3 [get_ports altera_reserved_tms]
set_output_delay -clock altera_reserved_tck 3 [get_ports altera_reserved_tdo]


#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks

# Aliases for Pll clocks found in TimeQuest - report clocks
set sys_clk   u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk
set sdram_pll u0|pll|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|divclk

create_generated_clock \
	-name dram_clk_out \
	-source $sdram_pll \
	[get_ports DRAM_CLK]

# Create alias for dram clock to be used in specifications
# makes it easy to switch between pin and pll output
#set clk_dram $sdram_pll
set clk_dram dram_clk_out

#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty



#**************************************************************
# Set Input Delay
#**************************************************************
# Board Delay (Data) + Propagation Delay - Board Delay (Clock)
#set_input_delay -max -clock $clk_dram -0.048 [get_ports DRAM_DQ*]
#set_input_delay -min -clock $clk_dram -0.057 [get_ports DRAM_DQ*]

# SDRAM t_OH3 = 2.7 ns (output hold time from clk)
# DRAM_CLK pcb trace: 10 cm (@55 ps/cm) ==> td_clk = 0.55 ns
# DQ pcb trace: 10 cm (@55 ps/cm) ==> td_dq = 0.55 ns
# input delay min = 0.5 + 2.7 + 0.5 = 3.7 ns
# Regnet ifht dram clock output
set_input_delay -min -clock $clk_dram 3.7 [get_ports DRAM_DQ*]

# SDRAM t_ACH3 = 5.4 ns (access time from clk)
# sdram clk pcb: 10 cm (@55 ps/cm) ==> td_clk = 0.55 ns
# DQ pcb: 10 cm (@55 ps/cm) ==> td_dq = 0.55 ns
# input delay max = td_clk + t_ACH3 + td_dq = 6.5 ns
set_input_delay -max -clock $clk_dram 6.5 [get_ports DRAM_DQ*]



#set_input_delay -max -clock tv_27m 3.692 [get_ports TD_DATA*]
#set_input_delay -min -clock tv_27m 2.492 [get_ports TD_DATA*]
#set_input_delay -max -clock tv_27m 3.654 [get_ports TD_HS]
#set_input_delay -min -clock tv_27m 2.454 [get_ports TD_HS]
#set_input_delay -max -clock tv_27m 3.656 [get_ports TD_VS]
#set_input_delay -min -clock tv_27m 2.456 [get_ports TD_VS]

#**************************************************************
# Set Output Delay
#**************************************************************
# max : Board Delay (Data) - Board Delay (Clock) + tsu (External Device)
# min : Board Delay (Data) - Board Delay (Clock) - th (External Device)
set_output_delay -max -clock $clk_dram 1.452  [get_ports DRAM_DQ*]
set_output_delay -min -clock $clk_dram -0.857 [get_ports DRAM_DQ*]
set_output_delay -max -clock $clk_dram 1.531 [get_ports DRAM_ADDR*]
set_output_delay -min -clock $clk_dram -0.805 [get_ports DRAM_ADDR*]
set_output_delay -max -clock $clk_dram 1.533  [get_ports DRAM_*DQM]
set_output_delay -min -clock $clk_dram -0.805 [get_ports DRAM_*DQM]
set_output_delay -max -clock $clk_dram 1.510  [get_ports DRAM_BA*]
set_output_delay -min -clock $clk_dram -0.800 [get_ports DRAM_BA*]
set_output_delay -max -clock $clk_dram 1.520  [get_ports DRAM_RAS_N]
set_output_delay -min -clock $clk_dram -0.780 [get_ports DRAM_RAS_N]
set_output_delay -max -clock $clk_dram 1.5000  [get_ports DRAM_CAS_N]
set_output_delay -min -clock $clk_dram -0.800 [get_ports DRAM_CAS_N]
set_output_delay -max -clock $clk_dram 1.545 [get_ports DRAM_WE_N]
set_output_delay -min -clock $clk_dram -0.755 [get_ports DRAM_WE_N]
set_output_delay -max -clock $clk_dram 1.496  [get_ports DRAM_CKE]
set_output_delay -min -clock $clk_dram -0.804 [get_ports DRAM_CKE]
set_output_delay -max -clock $clk_dram 1.508  [get_ports DRAM_CS_N]
set_output_delay -min -clock $clk_dram -0.792 [get_ports DRAM_CS_N]

#set_output_delay -max -clock clk_vga 0.220 [get_ports VGA_R*]
#set_output_delay -min -clock clk_vga -1.506 [get_ports VGA_R*]
#set_output_delay -max -clock clk_vga 0.212 [get_ports VGA_G*]
#set_output_delay -min -clock clk_vga -1.519 [get_ports VGA_G*]
#set_output_delay -max -clock clk_vga 0.264 [get_ports VGA_B*]
#set_output_delay -min -clock clk_vga -1.519 [get_ports VGA_B*]
#set_output_delay -max -clock clk_vga 0.215 [get_ports VGA_BLANK]
#set_output_delay -min -clock clk_vga -1.485 [get_ports VGA_BLANK]



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from $clk_dram -to $sys_clk 2

#set_multicycle_path -from [get_clocks $clk_dram] -to [get_ports DRAM_DQ*] -setup -end 2

#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Load
#**************************************************************

