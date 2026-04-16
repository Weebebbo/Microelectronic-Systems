analyze -library WORK -format vhdl {constants.vhd fa.vhd rca.vhd booth_encoder_selector.vhd boothmul.vhd}
elaborate boothmul -architecture rtl -parameter NBIT=8
compile -exact_map
write -hierarchy -format vhdl -output /home/ms26.31/Desktop/syn/POST_SYNTHESYS_7bit_mul.vhdl
report_timing > 8bit_timing.txt
report_area > 8bit_area.txt
report_timing -nworst 10 > 8bit_worst_timings.txt
