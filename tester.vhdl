-- tester

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tester is 
 end tester;

architecture testbench of tester is
	  signal clock:  std_logic;
     signal reset:  std_logic;
     signal count_definite :  std_logic_vector (7 downto 0);
     signal count_load :  std_logic;
     signal quit_registr :  std_logic_vector(7 downto 0);
     signal quit_count :  std_logic_vector(7 downto 0);
	  constant clk_period: time := 40 ns;
     signal sum_flag: std_logic_vector (7 downto 0);
	  
		procedure wait_for (constant how_many: in integer) is
			variable i: integer;
			begin
				  i := how_many;
			while (i /= 0) loop
				wait for clk_period/2;
					  i := i - 1;
			end loop;
		end procedure;


begin

	UUT :entity work.mixing port map ( clock => clock, 
											reset => reset, 
											count_definite => count_definite, 
											count_load => count_load, 
											quit_saved_r => quit_registr, 
											quit_cur_count => quit_count);

	synch: process
	begin
	clock <= '0';
	wait for clk_period/2;
	clock <= '1';
	wait for clk_period/2;
	end process;
	
	test_process: process  
	     begin
	    	 
	         sum_flag <= (others => '0');
	         reset <= '1';
	         count_load <= '0';
	         wait_for (1);
	         reset <= '0';
	         while (sum_flag <= "00110010") loop
	             sum_flag <= sum_flag +1;
	             wait_for (1);	
	         end loop;
	          count_definite <= quit_count;
	          wait_for(6);
	          count_load <= '1';
	          wait_for (4);
	          count_load <= '0';	         
	          wait_for (1001);

	end process;

end testbench;







