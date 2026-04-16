set hdlin_vhdl_std 2008

# settinging up environment
sh mkdir WORK
define_design_lib WORK -path ./WORK

# analyzing and compiling the design
analyze -library WORK -format vhdl {alu_types.vhd constants.vhd alu.vhd}
elaborate alu -architecture behavior -library WORK -parameter N=4
compile -exact_map

# reports and netlist
write -hierarchy -format vhdl -output ./Post_synthesys_alu.vhdl
report_area > area.txt
report_timing > timing.txt