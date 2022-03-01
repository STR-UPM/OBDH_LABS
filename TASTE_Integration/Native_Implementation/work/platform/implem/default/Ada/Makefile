VISUAL?=kate

all: compile-linux

clean:
	rm -rf obj
edit:
	echo "project tmp_platform is For Source_Dirs use (\"src\", \"../../dataview/Ada/\"); end tmp_platform;" > tmp_platform.gpr
	gnat-gps -P tmp_platform.gpr
	rm tmp_platform.gpr

compile-linux:
	mkdir -p obj && cd obj && ADA_INCLUDE_PATH=../../../dataview/Ada gnat make ../src/platform
