.PHONY: all

#proceduser
all: $(addsuffix .vcd,simple $(addsuffix _latch,sr gated_d rh) $(addsuffix _flipflop,d sr jk))

#main
%.vcd: %.vvp
	vvp $<
%.vvp: %.v %_tb.v
	iverilog -o $@ $^
d_flipflop.vvp: sr_latch.v gated_d_latch.v d_flipflop.v d_flipflop_tb.v
	iverilog -o $@ $^
gated_d_latch.vvp: sr_latch.v gated_d_latch.v gated_d_latch_tb.v
	iverilog -o $@ $^
sr_flipflop.vvp: sr_latch.v sr_flipflop.v sr_flipflop_tb.v
	iverilog -o $@ $^
#jk_flipflop.vvp: sr_latch.v jk_flipflop.v jk_flipflop_tb.v
#	iverilog -o $@ $^
