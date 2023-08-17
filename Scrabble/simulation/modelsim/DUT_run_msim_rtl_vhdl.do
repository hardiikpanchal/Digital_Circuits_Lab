transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Third Semester/EE 214/Labs/18 August (DD)/Gates.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/Labs/18 August (DD)/DUT.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/Labs/18 August (DD)/scrabble.vhdl}

vcom -93 -work work {E:/Third Semester/EE 214/Labs/18 August (DD)/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
