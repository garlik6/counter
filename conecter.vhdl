-- connecting

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity conecter is
end conecter;

architecture conecter_bh of conecter is


signal conect_clock: std_logic;
signal conect_reset: std_logic;
signal conect_def: std_logic_vector (7 downto 0);
signal conect_load: std_logic;
signal conect_r_q: std_logic_vector(7 downto 0);
signal conect_count_q: std_logic_vector(7 downto 0);

   component mixing
      port(
      clock: in std_logic;
      reset: in std_logic;
      count_definite : in std_logic_vector (7 downto 0);
      count_load : in std_logic;
      quit_saved_r : out std_logic_vector(7 downto 0);
      quit_cur_count : out std_logic_vector(7 downto 0) 
      );
   end component;
    

    begin
    
    	bond_1: mixing
    	port map (
    		clock => conect_clock,
    		reset => conect_reset,
    		count_definite => conect_def,
    		count_load => conect_load,
    		quit_saved_r => conect_r_q,
    		quit_cur_count => conect_count_q
    	);
    	

end conecter_bh;





