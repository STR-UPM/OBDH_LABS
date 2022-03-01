VISUAL?=kate

all: compile-linux

clean:
	rm -rf obj
edit:
	echo "project tmp_ttc is For Source_Dirs use (\"src\", \"../../dataview/Ada/\"); end tmp_ttc;" > tmp_ttc.gpr
	gnat-gps -P tmp_ttc.gpr
	rm tmp_ttc.gpr

compile-linux:
	mkdir -p obj && cd obj && ADA_INCLUDE_PATH=../../../dataview/Ada gnat make ../src/ttc
