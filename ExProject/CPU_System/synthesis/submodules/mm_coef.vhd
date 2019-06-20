library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mm_coef is

  port (
    -- Avalon Interface
    csi_clockreset_clk     : in  std_logic;                     -- Avalon Clk
    csi_clockreset_reset_n : in  std_logic;                     -- Avalon Reset
    avs_s1_write           : in  std_logic;                     -- Avalon wr
    avs_s1_read            : in  std_logic;                     -- Avalon rd
    avs_s1_chipselect      : in  std_logic;                     -- Avalon cs
	avs_s1_byteenable      : in  std_logic_vector(1 downto 0);  -- Avalon byteenable
    avs_s1_address         : in  std_logic_vector(7 downto 0);  -- Avalon address
    avs_s1_writedata       : in  std_logic_vector(15 downto 0); -- Avalon wr data
    avs_s1_readdata        : out std_logic_vector(15 downto 0); -- Avalon rd data --HVORFOR OUT? Skal vi bruge write?
    ins_irq0_irq           : out std_logic;                     -- Avalon irq
  -- External Inputs
  input_irq     : in std_logic;
  input_counter : in std_logic;
  -- fir ports
  -- ST Bus --
    ast_sink_data    : in  std_logic_vector(23 downto 0);
    ast_sink_ready   : out std_logic;
    ast_sink_valid   : in  std_logic;
    ast_sink_error   : in  std_logic_vector(1 downto 0);
    ast_source_data  : out std_logic_vector(23 downto 0);
    ast_source_ready : in  std_logic;
    ast_source_valid : out std_logic;
    ast_source_error : out std_logic_vector(1 downto 0)
    );

end mm_coef;

architecture behaviour of mm_coef is

-- Signal Declarations
	signal x1 : signed(23 downto 0);
	signal x2 : signed(23 downto 0);
	signal x3 : signed(23 downto 0);
	signal x4 : signed(23 downto 0);
	signal x5 : signed(23 downto 0);
	signal x6 : signed(23 downto 0);
	signal x7 : signed(23 downto 0);
	signal x8 : signed(23 downto 0);
	signal x9 : signed(23 downto 0);
	signal x10 : signed(23 downto 0);
	
	--signal tap_index : unsigned(7 downto 0); Changed to a variable
	
	type sum_array is array (1 to 10) of signed(32 downto 0);
	type product_array is array (0 to 10) of signed(32 downto 0);
	subtype coef_type is integer range -128 to 127;
	type coef_array is array (0 to 10) of coef_type;
	
	signal coef : coef_array := (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); -- changed to signal???

	begin
	COEF_WR: process(csi_clockreset_clk, csi_clockreset_reset_n)
	begin
	
	
		if rising_edge(csi_clockreset_clk)then

			if (avs_s1_write = '1') and (avs_s1_chipselect = '1')  then		

				coef(to_integer(unsigned(avs_s1_address))) <= to_integer(signed(avs_s1_writedata));

			
			end if;
		end if;
		
	end process;
	
	FILTER: process(csi_clockreset_clk, csi_clockreset_reset_n) -- ALL IN ONE ARCHITECTURE?

	variable sum : sum_array;
	variable product : product_array;
	
	begin
		if rising_edge(csi_clockreset_clk) then
			x1 <= signed(ast_sink_data);
			x2 <= x1;
			x3 <= x2;
			x4 <= x3;
			x5 <= x4;
			x6 <= x5;
			x7 <= x6;
			x8 <= x7;
			x9 <= x8;
			x10 <= x9;
		
			product(0) := signed(ast_sink_data) * to_signed(coef(0), 9);
			product(1) := x1 * to_signed(coef(1), 9);
			product(2) := x2 * to_signed(coef(2), 9);
			product(3) := x3 * to_signed(coef(3), 9);
			product(4) := x4 * to_signed(coef(4), 9);
			product(5) := x5 * to_signed(coef(5), 9);
			product(6) := x6 * to_signed(coef(6), 9);
			product(7) := x7 * to_signed(coef(7), 9);
			product(8) := x8 * to_signed(coef(8), 9);
			product(9) := x9 * to_signed(coef(9), 9);
			product(10) := x10 * to_signed(coef(10), 9);
			
			sum(1) := product(0) + product(1);
			sum(2) := sum(1) + product(2);
			sum(3) := sum(2) + product(3);
			sum(4) := sum(3) + product(4);
			sum(5) := sum(4) + product(5);
			sum(6) := sum(5) + product(6);
			sum(7) := sum(6) + product(7);
			sum(8) := sum(7) + product(8);
			sum(9) := sum(8) + product(9);
			sum(10) := sum(9) + product(10);
			
		end if;
	end process;

end behaviour;
