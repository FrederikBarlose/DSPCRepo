library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;


entity fir is
	port (
	-- Common --
    clk              : in  std_logic;   -- 48KHz
    reset_n          : in  std_logic;
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
 end entity fir;
 
 architecture functional of fir is
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
	
--	type product_array is array (0 to 10) of integer;
	type sum_array is array (1 to 10) of signed(32 downto 0);
	type product_array is array (0 to 10) of signed(32 downto 0);
	subtype coef_type is integer range -128 to 127;
	type coef_array is array (0 to 10) of coef_type;
	
	constant coef : coef_array := (5, -21, -19, 19, 78, 107, 78, 19, -19, -21, 5);
	
	begin
	process (reset_n, clk)
	
	variable sum : sum_array;
	variable product : product_array;
	
	begin
		if rising_edge(clk) then
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
		
end architecture;
 
