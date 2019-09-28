onerror {quit -f}
vlib work
vlog -work work DEUARC.vo
vlog -work work DEUARC.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DEUARC_vlg_vec_tst
vcd file -direction DEUARC.msim.vcd
vcd add -internal DEUARC_vlg_vec_tst/*
vcd add -internal DEUARC_vlg_vec_tst/i1/*
add wave /*
run -all
