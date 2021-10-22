

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter8 is
port (
	clk_count : in std_logic;  
	reset_count : in std_logic;
	download_count : in std_logic_vector (7 downto 0);
	count_load_enable : in std_logic;
	quit_count : out std_logic_vector(7 downto 0);
	memory_count: out std_logic);
end counter8;


architecture counter_behavior of counter8 is
	signal count : std_logic_vector(8 downto 0);
	signal div_clk_count: std_logic_vector(3 downto 0);
	signal clk_en_r: std_logic;
begin
	quit_count <= count(7 downto 0);
	
	process (clk_count, reset_count)
	begin
		if (reset_count = '1') then
			count <= (others => '1'); 
			memory_count <= '0';
			div_clk_count <= (others => '0');
			clk_en_r <= '0';
		elsif (clk_count'event and clk_count = '1') then	
		--
		if (div_clk_count /= x"0") then
		  div_clk_count <= div_clk_count - '1';
		else
  		  div_clk_count <= x"2";
		end if;
		--
		if (div_clk_count = x"0") then
		  clk_en_r <= '1';
		else
		  clk_en_r <= '0';
		end if;
		--clk_en_r <= not(clk_en_r);
		--
		    if (clk_en_r /= '0') then
			if (count_load_enable = '1') then
				count <= '0' & download_count;
			else
				if (count <= download_count - 2) then
				  count <= count - '1';
				  memory_count <= '0';
				elsif (count = download_count) then
				  memory_count <= '1';
				  count <= count - x"02";
				elsif (count > download_count) then
				  --memory_count <= '0';
				  count <= count - x"05";
				end if;
			end if;
		     end if;	
			
		end if;
	end process;
end counter_behavior;








