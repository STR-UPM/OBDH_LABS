VISUAL?=kate

all: compile-linux

clean:
	rm -rf obj
edit:
	echo "project tmp_storage is For Source_Dirs use (\"src\", \"../../dataview/Ada/\"); end tmp_storage;" > tmp_storage.gpr
	gnat-gps -P tmp_storage.gpr
	rm tmp_storage.gpr

compile-linux:
	mkdir -p obj && cd obj && ADA_INCLUDE_PATH=../../../dataview/Ada gnat make ../src/storage
