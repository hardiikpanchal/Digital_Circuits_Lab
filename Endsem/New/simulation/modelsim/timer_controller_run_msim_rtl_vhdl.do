transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Third Semester/EE 214/Endsem/New/timer_controller.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/Endsem/New/timer_ckt.vhdl}
vcom -93 -work work {E:/Third Semester/EE 214/Endsem/New/fsm_lcd.vhdl}

vcom -93 -work work {E:/Third Semester/EE 214/Endsem/New/timer_controller_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  timer_controller_tb

add wave *
view structure
view signals
run 100 us
