onerror {quit -f}
vlib work
vlog -work work Common_Bus_System.vo
vlog -work work Common_Bus_System.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Common_Bus_System_vlg_vec_tst
vcd file -direction Common_Bus_System.msim.vcd
vcd add -internal Common_Bus_System_vlg_vec_tst/*
vcd add -internal Common_Bus_System_vlg_vec_tst/i1/*
add wave /*
run -all
