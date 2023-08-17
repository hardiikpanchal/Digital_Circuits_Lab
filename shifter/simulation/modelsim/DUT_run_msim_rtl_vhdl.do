transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/shifter/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/shifter/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/shifter/TopLevel.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/shifter/Gates.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/shifter/DUT.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/shifter/mux.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/shifter/shifter.vhdl}

vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/shifter/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
