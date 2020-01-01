.PHONY: all

#proceduser
all: $(addsuffix .vcd,simple $(addsuffix _latch,sr gated_d rh) $(addsuffix _flipflop,d sr jk))\
	hw_11_2_b.vcd hw_11_3.vcd

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
hw_11_2_b.vvp: hw_11_2_b.v d_flipflop_clr.v
	iverilog -o $@ $^
hw_11_3.vvp: hw_11_3.v hw_11_3__t.v
	iverilog -o $@ $^
