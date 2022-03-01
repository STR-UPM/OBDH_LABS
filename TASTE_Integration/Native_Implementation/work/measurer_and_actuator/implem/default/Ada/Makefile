VISUAL?=kate

all: compile-linux

clean:
	rm -rf obj
edit:
	echo "project tmp_measurer_and_actuator is For Source_Dirs use (\"src\", \"../../dataview/Ada/\"); end tmp_measurer_and_actuator;" > tmp_measurer_and_actuator.gpr
	gnat-gps -P tmp_measurer_and_actuator.gpr
	rm tmp_measurer_and_actuator.gpr

compile-linux:
	mkdir -p obj && cd obj && ADA_INCLUDE_PATH=../../../dataview/Ada gnat make ../src/measurer_and_actuator
