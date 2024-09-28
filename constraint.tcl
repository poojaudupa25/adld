remove_design -all
set search_path {}
#set link_library "/remote/in01home14/gsb/Desktop/Course_work/EDK/saed32lvt/saed32lvt_ulvl_tt1p05vn40c_i1p05v.db"
set target_library "/remote/in01home14/gsb/Desktop/Course_work/EDK/saed32rvt/saed32rvt_tt1p05v25c.db" 
set link_library "/remote/in01home14/gsb/Desktop/Course_work/EDK/saed32rvt/saed32rvt_tt1p05v25c.db"

analyze -format verilog ../rtl/behavioral_async_counter.v
#analyze -format verilog ../rtl/behavioral_async_counter.v

elaborate behavioral_async_counter -architecture verilog -library WORK
#elaborate behavioral_async_counter

#current_design behavioral_async_counterr
current_design behavioral_async_counter

link 

check_design

link
compile -map_effort medium -area_effort high
#compile_ultra 

write_file -f verilog -hier -output behavioral_async_counter_netlist.v
#write_file -f verilog -hier -output behavioral_async_counter_netlist.v
