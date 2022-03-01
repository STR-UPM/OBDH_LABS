all: compile-linux

clean:
	rm -rf obj ./xmi

edit:
	matlab -desktop -sd src

generate-code: ./xmi/Step_built

./xmi/Step_built: ./src/Step.slx
	$(warning ---------------------------------------------------------------------)
	$(warning NOTE: The following is a patch to generate source code automatically.)
	$(warning ---------------------------------------------------------------------)
	matlab -batch \
	    "cd src; \
	     run ./Simulink_DataView_asn.m; \
	     qgen_export_xmi ('Step.slx', '-o', '../xmi'); \
	     exit;"
	qgenc ./xmi/Step.xmi --gen-entrypoint --wrap-io --pre-process-xmi --incremental \
	    --no-misra --language ada --output src
	touch $@

./src/Step%slx : ./src/.acs_algorithm_script.m.md5
	$(warning Edit the Simulink model(s) before the system build.)
	matlab -batch \
	    "cd src;  \
	     run acs_algorithm_script.m;  \
	     exit;"

./src/.acs_algorithm_script.m.md5: ./src/acs_algorithm_script.m
	test -f $@ || md5sum $< > $@
	md5sum -c $@ &> /dev/null || md5sum $< > $@


compile-linux: generate-code
	mkdir -p obj && cd obj && gcc -c ../src/*.c ../code/*.c ../wrappers/*.c

.PHONY: all clean edit generate-code compile-linux
