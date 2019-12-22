.PHONY: all

#proceduser
all: simple.vcd

#main
simple.vcd: simple.vvp
	vvp $<
simple.vvp:simple.v simple_tb.v
	iverilog -o $@ $^
