library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity algo_control is
	generic(
		RECUR_CNTR_MAX : natural := 10
	);
	port(
		clk : in std_logic;
		rstB : in std_logic;
		start_algo : in std_logic;
		conv2d_end : in std_logic;
		gru_end : in std_logic;
		dense_end : in std_logic;
		algo_state : out std_logic_vector(2 downto 0);
	);
end entity algo_control;

architecture rtl of algo_control is
	type FSM is (sleep,recur, conv2d, gru, dense);
	signal state_reg, state_next : FSM;
	signal recur_CntrEnable : std_logic;
	signal recur_CntrReset : std_logic;
	signal recur_CntrVal : std_logic_vector(3 downto 0); --log2(RECUR_CNTR_MAX)
	signal recur_CntrEnd : std_logic;
begin
	REG: process(clk, rstB)
	begin
		if rstB = '0' then
			state_reg <= sleep;
		elsif rising_edge(clk) then
			state_reg <= state_next;
		end if;
	end process;
	
	NSL : process(state_reg, start_algo, recur_cntr_end, conv2d_end, gru_end, dense_end)
	begin
		case state_reg is
			when sleep =>
				recur_CntrReset <= '1';
				if start_algo = '1' then
					state_next <= recur;
				end if;
			when recur =>
				recur_CntrReset <= '0';
				recur_CntrEnable <= '1';
				if recur_CntrEnd = '1' then
					state_next <= dense;
				else
					state_next <= conv2d;
			when conv2d =>
				recur_CntrEnable <= '0';
				if conv2d_end = '1' then
					state_next <= gru;
				end if;
			when gru => 
				if gru_end = '1' then
					state_next <= recur;
				end if;
			when dense =>
				if dense_end = '1' then
					state_next <= sleep;
				end if;
		end case;
		
	recur_cntr_inst : entity work.counter(rtl)
	generic map(
		MAX_VAL => RECUR_CNTR_MAX
	)
	port map(
		clk => clk,
		rstB => rstB,
		CntrEnable => recur_CntrEnable, 
		CntrReset => recur_CntrReset,
		CntrVal => recur_CntrVal,
		CntrEnd => recur_CntrEnd
	);
	
	algo_state <=  "000" when state_reg = sleep,
						"001" when state_reg = recur,
						"010" when state_reg = conv2d,
						"011" when state_reg = gru,
						"100" when state_reg = dense else (others => '0');
end architecture rtl;