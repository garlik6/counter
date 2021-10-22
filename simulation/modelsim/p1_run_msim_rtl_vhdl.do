transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/grigo/quartus/conecter/mixing.vhdl}
vcom -93 -work work {C:/Users/grigo/quartus/conecter/lab_1_regist.vhdl}
vcom -93 -work work {C:/Users/grigo/quartus/conecter/lab_1_counter8.vhdl}

vcom -93 -work work {C:/Users/grigo/quartus/conecter/tester.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L arriaii_hssi -L arriaii_pcie_hip -L arriaii -L rtl_work -L work -voptargs="+acc"  tester

do C:/Users/grigo/quartus/conecter/tester.vhdl
