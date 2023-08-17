transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Third Semester/EE 214/Labs/31 August/8 bit adder/Gates.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/Labs/31 August/8 bit adder/DUT.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/Labs/31 August/8 bit adder/Full_Adder.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/Labs/31 August/8 bit adder/adder_8bit.vhdl}

vcom -93 -work work {E:/Third Semester/EE 214/Labs/31 August/8 bit adder/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
