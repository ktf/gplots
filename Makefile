%.svg: %.gp
	gnuplot $< > $@

all: jemalloc-options.svg
