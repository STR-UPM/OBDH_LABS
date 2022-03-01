# SDL
OPENGEODE?=opengeode

all: compile-linux

clean:
	rm -rf obj

edit:
	cd src && $(OPENGEODE) system_structure.pr sensors.pr

# Ada
generate-code:
	mkdir -p code && cd code && \
	   $(OPENGEODE) --taste --toAda ../src/sensors.pr ../src/system_structure.pr && \
	   mv *.gpr ..

compile-linux: generate-code
	   CODE_PATH=code ADA_INCLUDE_PATH=../../../dataview/Ada gprbuild -p -P sensors_ada.gpr

