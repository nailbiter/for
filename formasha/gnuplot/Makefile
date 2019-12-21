.PHONY: all


#procedures
all: plot1.png

#main
%.png: %.gplot
	cat $< | gnuplot > $@
