library ieee;
use ieee.std_logic_1164.all;

entity timer_ckt is
port ( clock_1, clock_50, reset : in std_logic;
LED : out std_logic_vector(3 downto 0);
timer_inp : in std_logic_vector(1 downto 0));
-- timer_inp is State Machine output
end entity timer_ckt;
-- Define architecture body

architecture timer of timer_ckt is

begin
process(clock_50)

variable timer1 : integer range 0 to 500E6 := 1;
variable timer2 : integer range 0 to 500E6 := 1;
variable timer3 : integer range 0 to 500E6 := 1;

-- 500E6 means 500 x 10 ^ 6
-- the above variable will count the number
-- of clock pulses till it reaches required
-- number of seconds
-- Use similar 2 other variables for timer2, timer3
begin


if(clock_50='1' and clock_50' event) then
	if(reset = '1') then
		timer1 := 1;
		timer2 := 1;
		timer3 := 1;
		
	else
		if(timer_inp = "00") then
			LED(3) <= '1';
			
		elsif(timer_inp = "01") then
			if(timer1 < 100) then
				timer1 := timer1 + 1;				
				LED(0) <= '1';
			else 
				timer1 := 1;			
			end if;
				
		elsif(timer_inp = "10") then
			if(timer2 < 350) then
				timer2 := timer2 + 1;
				LED(1) <= '1';
				
			else
				timer2 := 1;
			end if;
		else 
			if(timer3 < 500) then
				timer3 := timer3 + 1;
				LED(0) <= '1';
			else
				timer3 := 1;
			end if;
				
		end if;
		
	
	end if;

end if;
-- You may have to use multiple nested if condition here
-- e.g. clock_50'event, reset, condition for increment etc.
-- reset will initialize the timer1, timer2 and timer3 with
-- the value 1
-- this is the syntax to increment timer variable
-- remember : you have to assign LED here also

end process;

end timer;
