	component CPU_System is
		port (
			clk_50                                    : in    std_logic                     := 'X';             -- clk
			dram_addr                                 : out   std_logic_vector(12 downto 0);                    -- addr
			dram_ba                                   : out   std_logic_vector(1 downto 0);                     -- ba
			dram_cas_n                                : out   std_logic;                                        -- cas_n
			dram_cke                                  : out   std_logic;                                        -- cke
			dram_cs_n                                 : out   std_logic;                                        -- cs_n
			dram_dq                                   : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			dram_dqm                                  : out   std_logic_vector(1 downto 0);                     -- dqm
			dram_ras_n                                : out   std_logic;                                        -- ras_n
			dram_we_n                                 : out   std_logic;                                        -- we_n
			dram_clk_clk                              : out   std_logic;                                        -- clk
			in_port_to_the_pio_input_0                : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			out_port_from_the_pio_output_0            : out   std_logic_vector(7 downto 0);                     -- export
			reset_reset_n                             : in    std_logic                     := 'X';             -- reset_n
			jtag_uart_0_avalon_jtag_slave_chipselect  : in    std_logic                     := 'X';             -- chipselect
			jtag_uart_0_avalon_jtag_slave_address     : in    std_logic                     := 'X';             -- address
			jtag_uart_0_avalon_jtag_slave_read_n      : in    std_logic                     := 'X';             -- read_n
			jtag_uart_0_avalon_jtag_slave_readdata    : out   std_logic_vector(31 downto 0);                    -- readdata
			jtag_uart_0_avalon_jtag_slave_write_n     : in    std_logic                     := 'X';             -- write_n
			jtag_uart_0_avalon_jtag_slave_writedata   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			jtag_uart_0_avalon_jtag_slave_waitrequest : out   std_logic                                         -- waitrequest
		);
	end component CPU_System;

	u0 : component CPU_System
		port map (
			clk_50                                    => CONNECTED_TO_clk_50,                                    --                    clk_50_clk_in.clk
			dram_addr                                 => CONNECTED_TO_dram_addr,                                 --                             dram.addr
			dram_ba                                   => CONNECTED_TO_dram_ba,                                   --                                 .ba
			dram_cas_n                                => CONNECTED_TO_dram_cas_n,                                --                                 .cas_n
			dram_cke                                  => CONNECTED_TO_dram_cke,                                  --                                 .cke
			dram_cs_n                                 => CONNECTED_TO_dram_cs_n,                                 --                                 .cs_n
			dram_dq                                   => CONNECTED_TO_dram_dq,                                   --                                 .dq
			dram_dqm                                  => CONNECTED_TO_dram_dqm,                                  --                                 .dqm
			dram_ras_n                                => CONNECTED_TO_dram_ras_n,                                --                                 .ras_n
			dram_we_n                                 => CONNECTED_TO_dram_we_n,                                 --                                 .we_n
			dram_clk_clk                              => CONNECTED_TO_dram_clk_clk,                              --                         dram_clk.clk
			in_port_to_the_pio_input_0                => CONNECTED_TO_in_port_to_the_pio_input_0,                --  pio_input_0_external_connection.export
			out_port_from_the_pio_output_0            => CONNECTED_TO_out_port_from_the_pio_output_0,            -- pio_output_0_external_connection.export
			reset_reset_n                             => CONNECTED_TO_reset_reset_n,                             --                            reset.reset_n
			jtag_uart_0_avalon_jtag_slave_chipselect  => CONNECTED_TO_jtag_uart_0_avalon_jtag_slave_chipselect,  --    jtag_uart_0_avalon_jtag_slave.chipselect
			jtag_uart_0_avalon_jtag_slave_address     => CONNECTED_TO_jtag_uart_0_avalon_jtag_slave_address,     --                                 .address
			jtag_uart_0_avalon_jtag_slave_read_n      => CONNECTED_TO_jtag_uart_0_avalon_jtag_slave_read_n,      --                                 .read_n
			jtag_uart_0_avalon_jtag_slave_readdata    => CONNECTED_TO_jtag_uart_0_avalon_jtag_slave_readdata,    --                                 .readdata
			jtag_uart_0_avalon_jtag_slave_write_n     => CONNECTED_TO_jtag_uart_0_avalon_jtag_slave_write_n,     --                                 .write_n
			jtag_uart_0_avalon_jtag_slave_writedata   => CONNECTED_TO_jtag_uart_0_avalon_jtag_slave_writedata,   --                                 .writedata
			jtag_uart_0_avalon_jtag_slave_waitrequest => CONNECTED_TO_jtag_uart_0_avalon_jtag_slave_waitrequest  --                                 .waitrequest
		);

