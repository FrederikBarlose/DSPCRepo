	CPU_System u0 (
		.clk_50                                    (<connected-to-clk_50>),                                    //                    clk_50_clk_in.clk
		.dram_addr                                 (<connected-to-dram_addr>),                                 //                             dram.addr
		.dram_ba                                   (<connected-to-dram_ba>),                                   //                                 .ba
		.dram_cas_n                                (<connected-to-dram_cas_n>),                                //                                 .cas_n
		.dram_cke                                  (<connected-to-dram_cke>),                                  //                                 .cke
		.dram_cs_n                                 (<connected-to-dram_cs_n>),                                 //                                 .cs_n
		.dram_dq                                   (<connected-to-dram_dq>),                                   //                                 .dq
		.dram_dqm                                  (<connected-to-dram_dqm>),                                  //                                 .dqm
		.dram_ras_n                                (<connected-to-dram_ras_n>),                                //                                 .ras_n
		.dram_we_n                                 (<connected-to-dram_we_n>),                                 //                                 .we_n
		.dram_clk_clk                              (<connected-to-dram_clk_clk>),                              //                         dram_clk.clk
		.in_port_to_the_pio_input_0                (<connected-to-in_port_to_the_pio_input_0>),                //  pio_input_0_external_connection.export
		.out_port_from_the_pio_output_0            (<connected-to-out_port_from_the_pio_output_0>),            // pio_output_0_external_connection.export
		.reset_reset_n                             (<connected-to-reset_reset_n>),                             //                            reset.reset_n
		.jtag_uart_0_avalon_jtag_slave_chipselect  (<connected-to-jtag_uart_0_avalon_jtag_slave_chipselect>),  //    jtag_uart_0_avalon_jtag_slave.chipselect
		.jtag_uart_0_avalon_jtag_slave_address     (<connected-to-jtag_uart_0_avalon_jtag_slave_address>),     //                                 .address
		.jtag_uart_0_avalon_jtag_slave_read_n      (<connected-to-jtag_uart_0_avalon_jtag_slave_read_n>),      //                                 .read_n
		.jtag_uart_0_avalon_jtag_slave_readdata    (<connected-to-jtag_uart_0_avalon_jtag_slave_readdata>),    //                                 .readdata
		.jtag_uart_0_avalon_jtag_slave_write_n     (<connected-to-jtag_uart_0_avalon_jtag_slave_write_n>),     //                                 .write_n
		.jtag_uart_0_avalon_jtag_slave_writedata   (<connected-to-jtag_uart_0_avalon_jtag_slave_writedata>),   //                                 .writedata
		.jtag_uart_0_avalon_jtag_slave_waitrequest (<connected-to-jtag_uart_0_avalon_jtag_slave_waitrequest>)  //                                 .waitrequest
	);

