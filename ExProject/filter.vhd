library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity filter is
  generic (bitperiod : time := 20 ns);  -- Default value
  port (
    -- Common --
    ast_clk_48K      : in  std_logic;   --48KHz
    ast_reset_n      : in  std_logic;
	-- Data to DAC
    ast_sink_data    : in  std_logic_vector(23 downto 0);
    ast_sink_ready   : out std_logic                     := '0';  -- Value at startup
    ast_sink_valid   : in  std_logic;
    ast_sink_error   : in  std_logic_vector(1 downto 0);
	-- Data from ADC
    ast_source_data  : out std_logic_vector(23 downto 0) := (others => '0');
    ast_source_ready : in  std_logic;
    ast_source_valid : out std_logic                     := '0';
    ast_source_error : out std_logic_vector(1 downto 0)  := (others => '0');
    -- IIS Interface --
    bitclk           : in  std_logic;
    adcdat           : in  std_logic;
    dacdat           : out std_logic                     := '0';
    adclrck          : in  std_logic;
    daclrck          : in  std_logic

    );
end entity iis2st;

-------------------------------------------------------------------------------
-- RTL version of iis2st 
-- For actual implementation
-------------------------------------------------------------------------------
architecture rtl of filter is
TYPE state_type IS (Idle, Sample, Latch, Waiting);
	SIGNAL State : state_type;

begin
  process (ast_reset_n, bitclk);
  variable i : integer range 0 to 23         := 0;
  variable st_source_data_temp : std_logic_vector(23 downto 0) := (others => '0');
  begin
	if (reset = '1') then
		State <= Idle;

	elsif rising_edge(bitclk) then
		CASE State is
			when Idle =>
				if (adclrck = '0') then
					State <= Sample;
					i := 23;
				end if;
			when Sample =>
				st_source_data_temp(i) <= adcdat;
				if (i = 0) then
					State <= Latch;
				end if;
				i := i - 1;
			when Latch =>
				ast_source_data <= st_source_data_temp;
				State = Waiting;
			when Waiting =>
				if (adclrck = '1') then
					State <= Idle;
				end if;
			when others =>
				State <= Idle;
		end CASE;
	end if;
   end process;

  -- YOUR IMPLEMENTATION CODE HERE!!!
  ast_source_error <= (others=>'1');    -- Just for testing
  ast_source_data <= (others=>'1');     -- Just for testing
  ast_sink_ready <= '1';                -- Just for testing 
  ast_source_valid <= '1';              -- Just for testing
  ast_source_error <= (others=>'1');    -- Just for testing
  dacdat <= adcdat;                     -- Just for testing - Looping back IIS Signal
  
end architecture;

