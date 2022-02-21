VISUAL?=kate

all: compile-linux

clean:
	rm -rf obj
edit:
	echo "project tmp_simulated_acs_hw is For Source_Dirs use (\"src\", \"../../dataview/Ada/\"); end tmp_simulated_acs_hw;" > tmp_simulated_acs_hw.gpr
	gnat-gps -P tmp_simulated_acs_hw.gpr
	rm tmp_simulated_acs_hw.gpr

compile-linux:
	mkdir -p obj && cd obj && ADA_INCLUDE_PATH=../../../dataview/Ada gnat make ../src/simulated_acs_hw
