transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/ALU_Wed/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/ALU_Wed/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/ALU_Wed/TopLevel.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/ALU_Wed/DUT.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/ALU_Wed/ALU.vhdl}

vcom -93 -work work {E:/Third Semester/EE 214/All lab designs/ALU_Wed/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
