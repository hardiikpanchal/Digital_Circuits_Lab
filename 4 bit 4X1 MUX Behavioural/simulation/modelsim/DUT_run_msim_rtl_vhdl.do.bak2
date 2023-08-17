transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/4 bit 4X1 MUX Behavioural/DUT.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/4 bit 4X1 MUX Behavioural/4bit_4X1_MUX.vhdl}

vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/4 bit 4X1 MUX Behavioural/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
