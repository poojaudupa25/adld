set target_library /home/student/Downloads/Course_work/EDK/saed32rvt/saed32rvt_tt1p05v25c.db
link
set link_library /home/student/Downloads/Course_work/EDK/saed32rvt/saed32rvt_tt1p05v25c.db
analyze -format verilog ../rtl/fifo.v
elaborate fifo -architecture verilog -library WORK
current_design fifo
link
check_design
link
compile -map_effort medium -area_effort high
write_file -f verilog -hier -output fifo_netlist.v

