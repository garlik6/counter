-- tester

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tester is 
  port (
	test_clock: out std_logic;
	test_reset: out std_logic;
	test_definite: out std_logic_vector (7 downto 0);
	test_load: out std_logic;
	test_quit_r: in std_logic_vector (7 downto 0);
	test_quit_count: in std_logic_vector (7 downto 0));
  end tester;

 

architecture testbench of tester is

component mixing
  port (
     clock: out std_logic;
     reset: out std_logic;
     count_definite : out std_logic_vector (7 downto 0);
     count_load : out std_logic;
     quit_registr : out std_logic_vector(7 downto 0);
     quit_count : out std_logic_vector(7 downto 0)
  );
end component;

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

	synch: process
	begin
	test_clock <= '0';
	wait for clk_period/2;
	test_clock <= '1';
	wait for clk_period/2;
	end process;
	
	test_process: process  
	     begin
	    	 
	         sum_flag <= (others => '0');
	         wait for clk_period/2;
	         test_reset <= '1';
	         test_load <= '0';
	         wait_for (1);
	         test_reset <= '0';
	         while (sum_flag <= "00111010") loop
	             sum_flag <= sum_flag +1;
	             wait_for (1);	
	         end loop;
	          test_definite <= sum_flag;
	          wait_for(6);
	          
	          test_load <= '1';
	          wait_for (4);
	          test_load <= '0';	         
	          wait_for (1001);

	end process;

end testbench;



