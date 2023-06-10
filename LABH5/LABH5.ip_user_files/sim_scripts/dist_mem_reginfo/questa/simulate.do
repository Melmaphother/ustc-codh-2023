onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dist_mem_reginfo_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dist_mem_reginfo.udo}

run -all

quit -force