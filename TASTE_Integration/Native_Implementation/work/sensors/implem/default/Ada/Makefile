VISUAL?=kate

all: compile-linux

clean:
	rm -rf obj
edit:
	echo "project tmp_sensors is For Source_Dirs use (\"src\", \"../../dataview/Ada/\"); end tmp_sensors;" > tmp_sensors.gpr
	gnat-gps -P tmp_sensors.gpr
	rm tmp_sensors.gpr

compile-linux:
	mkdir -p obj && cd obj && ADA_INCLUDE_PATH=../../../dataview/Ada gnat make ../src/sensors
