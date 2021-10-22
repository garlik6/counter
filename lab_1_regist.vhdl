

library ieee;
use ieee.std_logic_1164.all; 


entity regist is
  port(
    clk_r: in std_logic; -- clk
    reset_r: in std_logic; --clear
    recoding_enable_r: in std_logic;
    load_r: in std_logic_vector(7 downto 0);
    quit_r: out std_logic_vector(7 downto 0) 
  );
end regist;

architecture r_behavior of regist is
  
  signal work_r: std_logic_vector(7 downto 0); 
  
begin
  
  quit_r <= work_r; 

  process (clk_r, reset_r) 
    begin 
       if (reset_r = '1') then 
       work_r <= (others => '0');
       elsif (clk_r'event and clk_r = '1') then 
	  if recoding_enable_r = '1' then 
		work_r <= load_r;
	  end if;	
       end if;
  end process; 

end r_behavior;



