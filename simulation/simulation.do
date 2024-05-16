quit -sim
file delete -force work

vlib work
vlog -f files_rtl.f

vsim processor_tb
log -r /*

run -all

add wave -position end  sim:/processor_tb/clk
add wave -position end  sim:/processor_tb/rst
add wave -position end  sim:/processor_tb/instruction
add wave -position end  sim:/processor_tb/if_id_IR
add wave -position end  sim:/processor_tb/id_ex_IR
add wave -position end  sim:/processor_tb/ex_mem_IR
add wave -position end  sim:/processor_tb/mem_wb_IR
add wave -position end  sim:/processor_tb/proc_module/id_stage_0/should_stall
add wave -position end  sim:/processor_tb/proc_module/id_stage_0/should_forward_id_ex_A
add wave -position end  sim:/processor_tb/proc_module/id_stage_0/should_forward_id_ex_B
add wave -position end  sim:/processor_tb/proc_module/id_stage_0/should_forward_ex_mem_A
add wave -position end  sim:/processor_tb/proc_module/id_stage_0/should_forward_ex_mem_B
add wave -position end  sim:/processor_tb/proc_module/id_stage_0/should_forward_mem_wb_A
add wave -position end  sim:/processor_tb/proc_module/id_stage_0/should_forward_mem_wb_B
add wave -position end  sim:/processor_tb/proc_module/id_stage_0/id_ex_rd_mem
add wave -position end  sim:/processor_tb/proc_module/id_stage_0/ex_mem_rd_mem

radix -hexadecimal
