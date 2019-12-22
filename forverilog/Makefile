.PHONY: all

#proceduser
all: $(addsuffix .vcd,simple sr_latch gated_d_latch rh_latch d_flipflop)

#main
%.vcd: %.vvp
	vvp $<
%.vvp: %.v %_tb.v
	iverilog -o $@ $^
d_flipflop.vvp: sr_latch.v gated_d_latch.v d_flipflop.v d_flipflop_tb.v
	iverilog -o $@ $^
gated_d_latch.vvp: sr_latch.v gated_d_latch.v gated_d_latch_tb.v
	iverilog -o $@ $^
