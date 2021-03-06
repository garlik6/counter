

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mixing is
   port(
   clock: in std_logic;
   reset: in std_logic;
   count_definite : in std_logic_vector (7 downto 0);
   count_load : in std_logic;
   quit_saved_r : out std_logic_vector(7 downto 0);
   quit_cur_count : out std_logic_vector(7 downto 0) 
   );
end mixing;


architecture mix_behavior of mixing is

signal first_sign: std_logic := '0';
signal second_sign: std_logic_vector (7 downto 0) :="00000000";
--signal third_sign: std_logic_vector (7 downto 0) :="00000000";


   component counter8 
    	port(
              clk_count : in std_logic;
	      reset_count : in std_logic;
	      download_count : in std_logic_vector(7 downto 0);
	      count_load_enable : in std_logic;
	      memory_count: out std_logic;
	      quit_count : out std_logic_vector(7 downto 0)
	      );
  end component;
  
     component regist
          port(
          clk_r: in std_logic; 
          reset_r: in std_logic;
          recoding_enable_r: in std_logic; 
          load_r: in std_logic_vector(7 downto 0); 
          quit_r: out std_logic_vector(7 downto 0) 
          );
     end component;      
  
  begin
     
     conect_1: counter8
       port map (
     	clk_count => clock,
     	reset_count => reset,  
     	download_count => count_definite,
     	count_load_enable => count_load,
     	memory_count => first_sign,
     	quit_count => second_sign
       );
     
     conect_2: regist
       port map (
          clk_r => clock,
          reset_r => reset,
          recoding_enable_r => first_sign,
          load_r => second_sign,
          quit_r => quit_saved_r
       );
     
     quit_cur_count <= second_sign;
  
        
end mix_behavior;






