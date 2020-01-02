.PHONY: all

#proceduser
all: $(addsuffix .vcd,simple $(addsuffix _latch,sr gated_d rh) $(addsuffix _flipflop,d sr jk) \
	$(addprefix hw_11_, 2_b 3 4)\
	$(addprefix hw_13_, 2_a 2_b 3_a 3_b)\
	)

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
hw_11_4.vvp: hw_11_4.v hw_11_4__d.v
	iverilog -o $@ $^
hw_11_3.vvp: hw_11_3.v hw_11_3__t.v
	iverilog -o $@ $^
hw_13_2_a.vvp: hw_13_2_a.v
	iverilog -o $@ $^
hw_13_2_b.vvp: hw_13_2_b.v
	iverilog -o $@ $^
hw_13_3_b.vvp: hw_13_3_b.v
	iverilog -o $@ $^
hw_13_3_a.vvp: hw_13_3_a.v
	iverilog -o $@ $^
