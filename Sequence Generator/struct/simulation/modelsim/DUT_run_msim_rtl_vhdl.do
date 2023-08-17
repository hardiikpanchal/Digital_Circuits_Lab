transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/Sequence Generator/struct/flipflops.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/Sequence Generator/struct/DUT.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/Sequence Generator/struct/seq_gen_struct.vhdl}

vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/Sequence Generator/struct/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
