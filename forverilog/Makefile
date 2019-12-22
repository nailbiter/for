.PHONY: all

#proceduser
all: $(addsuffix .vcd,simple sr_latch gated_d_latch rh_latch)

#main
%.vcd: %.vvp
	vvp $<
%.vvp: %.v %_tb.v
	iverilog -o $@ $^
gated_d_latch.vvp: sr_latch.v gated_d_latch.v gated_d_latch_tb.v
	iverilog -o $@ $^
