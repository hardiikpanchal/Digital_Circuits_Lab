library ieee;
use ieee.std_logic_1164.all;

entity mux_4X1_4bit is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
		  C: in std_logic_vector(operand_width-1 downto 0);
		  D: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector(operand_width-1 downto 0)
    ) ;
end mux_4X1_4bit;

architecture Struct of mux_4X1_4bit is

-------------------------functions


begin 

mux : process(A, B, C, D, sel)  
-------------------------variables

begin

---------------------------code
op(3) <= ((not(sel(1)))and(not(sel(0)))and(A(3))) or ((not(sel(1)))and(sel(0))and(B(3))) or ((not(sel(0)))and(sel(1))and(C(3))) or ((sel(1))and(sel(0))and(D(3))) ;
op(2) <= ((not(sel(1)))and(not(sel(0)))and(A(2))) or ((not(sel(1)))and(sel(0))and(B(2))) or ((not(sel(0)))and(sel(1))and(C(2))) or ((sel(1))and(sel(0))and(D(2))) ;
op(1) <= ((not(sel(1)))and(not(sel(0)))and(A(1))) or ((not(sel(1)))and(sel(0))and(B(1))) or ((not(sel(0)))and(sel(1))and(C(1))) or ((sel(1))and(sel(0))and(D(1))) ;
op(0) <= ((not(sel(1)))and(not(sel(0)))and(A(0))) or ((not(sel(1)))and(sel(0))and(B(0))) or ((not(sel(0)))and(sel(1))and(C(0))) or ((sel(1))and(sel(0))and(D(0))) ;

end process;


end Struct;
