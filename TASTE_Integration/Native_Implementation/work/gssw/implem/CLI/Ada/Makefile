VISUAL?=kate

all: compile-linux

clean:
	rm -rf obj
edit:
	echo "project tmp_gssw is For Source_Dirs use (\"src\", \"../../dataview/Ada/\"); end tmp_gssw;" > tmp_gssw.gpr
	gnat-gps -P tmp_gssw.gpr
	rm tmp_gssw.gpr

compile-linux:
	mkdir -p obj && cd obj && ADA_INCLUDE_PATH=../../../dataview/Ada gnat make ../src/gssw
