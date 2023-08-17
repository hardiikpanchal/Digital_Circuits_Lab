library ieee;
use ieee.std_logic_1164.all;

entity timer_controller is
		port( inp_switch:in std_logic_vector(2 downto 0);reset,clock_50, clock_1:in std_logic;
				out_LED: out std_logic_vector(3 downto 0));
end timer_controller;

architecture DutWrap of timer_controller is

	
component fsm is

		port( input:in std_logic_vector(2 downto 0);reset,clock_50, clock_1:in std_logic;
				output: out std_logic_vector(1 downto 0));
		  
end component fsm;

component timer_ckt is
		port ( clock_1, clock_50, reset : in std_logic; LED : out std_logic_vector(3 downto 0);
				timer_inp : in std_logic_vector(1 downto 0));
-- timer_inp is State Machine output
end component timer_ckt;

signal x, y : std_logic;

	
begin

 add_instance_1: fsm
 
			port map (					
					
					input(2)   => inp_switch(2),
					input(1)   => inp_switch(1),
					input(0)   => inp_switch(0),
					
					reset    => reset,
					clock_50 => clock_50,
					clock_1  => clock_1,
					
					output(1) => x,
					output(0) => y
					
					
					);	
					
					
 add_instance_2: timer_ckt
 
			port map (
					
					timer_inp(1)   => x,
					timer_inp(0)   => y,
					
					reset    => reset,
					clock_50 => clock_50,
					clock_1  => clock_1,
					
					LED(3)   => out_LED(3),
					LED(2)   => out_LED(2),
					LED(1)   => out_LED(1),
					LED(0)   => out_LED(0)
					
					
					);	
		
 						

end DutWrap;

