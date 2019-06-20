
module CPU_System (
	clk_50,
	dram_addr,
	dram_ba,
	dram_cas_n,
	dram_cke,
	dram_cs_n,
	dram_dq,
	dram_dqm,
	dram_ras_n,
	dram_we_n,
	dram_clk_clk,
	in_port_to_the_pio_input_0,
	out_port_from_the_pio_output_0,
	reset_reset_n,
	jtag_uart_0_avalon_jtag_slave_chipselect,
	jtag_uart_0_avalon_jtag_slave_address,
	jtag_uart_0_avalon_jtag_slave_read_n,
	jtag_uart_0_avalon_jtag_slave_readdata,
	jtag_uart_0_avalon_jtag_slave_write_n,
	jtag_uart_0_avalon_jtag_slave_writedata,
	jtag_uart_0_avalon_jtag_slave_waitrequest);	

	input		clk_50;
	output	[12:0]	dram_addr;
	output	[1:0]	dram_ba;
	output		dram_cas_n;
	output		dram_cke;
	output		dram_cs_n;
	inout	[15:0]	dram_dq;
	output	[1:0]	dram_dqm;
	output		dram_ras_n;
	output		dram_we_n;
	output		dram_clk_clk;
	input	[7:0]	in_port_to_the_pio_input_0;
	output	[7:0]	out_port_from_the_pio_output_0;
	input		reset_reset_n;
	input		jtag_uart_0_avalon_jtag_slave_chipselect;
	input		jtag_uart_0_avalon_jtag_slave_address;
	input		jtag_uart_0_avalon_jtag_slave_read_n;
	output	[31:0]	jtag_uart_0_avalon_jtag_slave_readdata;
	input		jtag_uart_0_avalon_jtag_slave_write_n;
	input	[31:0]	jtag_uart_0_avalon_jtag_slave_writedata;
	output		jtag_uart_0_avalon_jtag_slave_waitrequest;
endmodule
