library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
--library unisim;
--use unisim.vcomponents.all;

entity top is
  port (
    CLOCK_50   : in    std_logic                     := 'X';             -- clk
    DRAM_ADDR  : out  std_logic_vector(12 downto 0);
    DRAM_BA    : out  std_logic_vector(1 downto 0);
    DRAM_CAS_N : out  std_logic;
    DRAM_CKE   : out  std_logic;
    DRAM_CLK   : out  std_logic;
    DRAM_CS_N  : out  std_logic;
    DRAM_DQ    : inout   std_logic_vector(15 downto 0);
    DRAM_LDQM  : out  std_logic;
    DRAM_RAS_N : out  std_logic;
    DRAM_UDQM  : out  std_logic;
    DRAM_WE_N  : out  std_logic;
    LEDR       : out   std_logic_vector(7 downto 0);                     -- export
    --HEX0       : out   std_logic_vector(6 downto 0);                     -- hex0
    --HEX1       : out   std_logic_vector(6 downto 0);                     -- hex1
    --HEX2       : out   std_logic_vector(6 downto 0);                     -- hex2
    --HEX3       : out   std_logic_vector(6 downto 0);                     -- hex3
    SW         : in    std_logic_vector(8 downto 0)  := (others => 'X'); -- export
    KEY        : in    std_logic_vector(2 downto 0)
  );
end entity;

architecture arch of top is
    
signal clk_50mhz          : std_logic;
signal reset_n            : std_logic;
signal dram_dqm : std_logic_vector(1 downto 0);

---------------------------------------------------
-- Component Declaration for CPU_System
-- Required as it is not a plain VHDL component
-- Taken from Platform Designer instance generator
--------------------------------------------------- 	
    component CPU_System is
        port (
            clk_50                                      : in    std_logic                     := 'X';             -- clk
            dram_addr                                   : out   std_logic_vector(12 downto 0);                    -- addr
            dram_ba                                     : out   std_logic_vector(1 downto 0);                     -- ba
            dram_cas_n                                  : out   std_logic;                                        -- cas_n
            dram_cke                                    : out   std_logic;                                        -- cke
            dram_cs_n                                   : out   std_logic;                                        -- cs_n
            dram_dq                                     : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
            dram_dqm                                    : out   std_logic_vector(1 downto 0);                     -- dqm
            dram_ras_n                                  : out   std_logic;                                        -- ras_n
            dram_we_n                                   : out   std_logic;                                        -- we_n
            dram_clk_clk                                : out   std_logic;                                        -- clk
            in_port_to_the_pio_input_0                  : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
            out_port_from_the_pio_output_0              : out   std_logic_vector(7 downto 0);                     -- export
            reset_reset_n                               : in    std_logic                     := 'X'              -- reset_n
        );
    end component CPU_System;

begin
	
   clk_50mhz <= CLOCK_50;
--	reset_n <= KEY(0);
	reset_n <= '1';
	DRAM_LDQM <= dram_dqm(0);
	DRAM_UDQM <= dram_dqm(1);
	
    ---------------------------------------------------
    -- NIOS II Processor
    ---------------------------------------------------
    u0 : component CPU_System
        port map (
            clk_50                                      => clk_50mhz,    
            dram_addr                                   => DRAM_ADDR,
            dram_ba                                     => DRAM_BA,
            dram_cas_n                                  => DRAM_CAS_N,
            dram_cke                                    => DRAM_CKE,
            dram_cs_n                                   => DRAM_CS_N,
            dram_dq                                     => DRAM_DQ,
            dram_dqm                                    => dram_dqm,     
            dram_ras_n                                  => DRAM_RAS_N,   
            dram_we_n                                   => DRAM_WE_N,    
            dram_clk_clk                                => DRAM_CLK,     
            in_port_to_the_pio_input_0                  => SW(7 downto 0),
            out_port_from_the_pio_output_0              => LEDR,         
            reset_reset_n                               => reset_n       
        );

    --DRAM_ADDR <= (others=> '0');
    --DRAM_BA <= (others=> '0');
    --DRAM_CAS_N <= '1';
    --DRAM_CKE <= '0';
    --DRAM_CS_N <= '1';
    --DRAM_DQ <= (others=> 'Z');
    --DRAM_RAS_N <= '1';
    --DRAM_WE_N <= '1';
	 --dram_dqm <= "00";	

		
end architecture;