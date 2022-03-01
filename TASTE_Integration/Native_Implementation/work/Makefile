# MAKEFILE_PATH   := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKEFILE_PATH   := $(lastword $(MAKEFILE_LIST))
TOOL_INST       := $(shell taste-config --prefix)
OUTDIR          := $(dir $(MAKEFILE_PATH))
ASN1_FILES      := ../Native_Implementation.asn ${TOOL_INST}/share/taste-types/taste-types.asn
CP_FILES        := ../work/storage/Ada/Context-storage.asn      # Context parameters
DATAVIEW_PATH   := ${OUTDIR}/dataview
DATAVIEW_UNIQ   := ${DATAVIEW_PATH}/dataview-uniq.asn
DATAVIEW_ACN    := ${DATAVIEW_PATH}/dataview-uniq.acn
DATAVIEW_AADLV1 := ${DATAVIEW_PATH}/dataview_aadlv1.aadl
DATAVIEW_AADLV2 := ${DATAVIEW_PATH}/dataview_aadlv2.aadl
#TASTE_SHARED_TYPES?=${TOOL_INST}/share/SharedTypes  # Ellidiss only
TASTE_SHARED?=${HOME}/.local/share/QtProject/QtCreator/shared_types

# Project cache folder is used to speed up all ASN.1-related processing
export PROJECT_CACHE=${HOME}/.taste_AST_cache

all:	build-default

# Check that all runtimes used in the system are installed
check_targets:
	$(MAKE) -C build -f Makefile.taste check_targets

# Generate the language-specific data view needed before editing user code
dataview:	dataview/C/built dataview/Ada/built dataview/QGenAda/built
	# Copy the dataview to SDL function Manager (no context parameters)
	cp -u ${DATAVIEW_UNIQ} manager/SDL/src

# Generate the complete dataview, including Python bindings if there is a GUI
${DATAVIEW_PATH}/built:	dataview dataview/Python/built
	touch $@

# Build based on the deployment view
build-default:	aadl2glueC build/system_config.h ${DATAVIEW_PATH}/built build/deploymentview_final/Makefile
	$(MAKE) -j -C build -f Makefile.taste

# Execute the generated binaries (used in Space Creator when using the Run button)
run: # Space creator will always build before, so no need to depend on build-default
	$(MAKE) -j -C build -f Makefile.taste run

# Run the Concurrency View analysis tool (cheddar/marzhin)
run_cv: build/ConcurrencyView.aadl
	TASTECV --load $^

# The Concurrency View needed by Cheddar is the concatenation of system.aadl and ocarina_components.aadl
build/ConcurrencyView.aadl:	build/system.aadl
	cat $^ $(shell taste-config --prefix)/share/ocarina/AADLv2/ocarina_components.aadl > $@

# Rule to invoke Ocarina (generation of POHI middleware code)
build/deploymentview_final/Makefile:	build/main.aadl ${DATAVIEW_AADLV2}
	cd build ; ocarina -x main.aadl

# Optionally manage SQL Database (run taste-create-database to enable)
sql_db/DV.py:
	mkdir -p sql_db && touch $@

# Create dataview-uniq.asn by concatenating all asn1 input files
${DATAVIEW_UNIQ}:	${ASN1_FILES}
	mkdir -p ${PROJECT_CACHE} && mkdir -p ${DATAVIEW_PATH}
	sed -e '$$s/$$/\n/' -s $^ > $@

# Create dataview-uniq.acn by concatenating all input files
${DATAVIEW_ACN}:	../Native_Implementation.acn
	mkdir -p ${DATAVIEW_PATH}
	sed -e '$$s/$$/\n/' -s $^ > $@

# system_config.h is used to filter out non-needed ASN.1 encoder/decoders
build/system_config.h:	$(wildcard */*/wrappers/*_system_config.h)
	cat $^ > $@

#  Call DMT/aadl2glueC to generate glue code from the mini-cv.aadl files
aadl2glueC:	acs_algorithm/QGenAda/wrappers/aadl2glueC_built demo_timer_manager/Timer_Manager/wrappers/aadl2glueC_built gssw/GUI/wrappers/aadl2glueC_built manager/SDL/wrappers/aadl2glueC_built measurer_and_actuator/Ada/wrappers/aadl2glueC_built platform/Ada/wrappers/aadl2glueC_built sensors/Ada/wrappers/aadl2glueC_built simulated_acs_hw/Ada/wrappers/aadl2glueC_built storage/Ada/wrappers/aadl2glueC_built ttc/Ada/wrappers/aadl2glueC_built

# Build dataview.aadl in AADLv1 format, used by DMT to generate glue code
${DATAVIEW_AADLV1}: ${DATAVIEW_UNIQ}
	asn2aadlPlus  $< $@

# Build dataview.aadl in AADLv2 format, used by Ocarina to generate glue code
${DATAVIEW_AADLV2}: ${DATAVIEW_UNIQ}
	asn2aadlPlus --aadlv2  $< $@

acs_algorithm/QGenAda/wrappers/aadl2glueC_built: acs_algorithm/QGenAda/wrappers/acs_algorithm_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@

demo_timer_manager/Timer_Manager/wrappers/aadl2glueC_built: demo_timer_manager/Timer_Manager/wrappers/demo_timer_manager_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@

gssw/GUI/wrappers/aadl2glueC_built: gssw/GUI/wrappers/gssw_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@

manager/SDL/wrappers/aadl2glueC_built: manager/SDL/wrappers/manager_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@

measurer_and_actuator/Ada/wrappers/aadl2glueC_built: measurer_and_actuator/Ada/wrappers/measurer_and_actuator_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@

platform/Ada/wrappers/aadl2glueC_built: platform/Ada/wrappers/platform_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@

sensors/Ada/wrappers/aadl2glueC_built: sensors/Ada/wrappers/sensors_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@

simulated_acs_hw/Ada/wrappers/aadl2glueC_built: simulated_acs_hw/Ada/wrappers/simulated_acs_hw_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@

storage/Ada/wrappers/aadl2glueC_built: storage/Ada/wrappers/storage_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@

ttc/Ada/wrappers/aadl2glueC_built: ttc/Ada/wrappers/ttc_mini_cv.aadl ${DATAVIEW_AADLV1}
	aadl2glueC -allboards -o $(dir $@) $^
	touch $@


# Compile the ASN.1 models in C
dataview/C/built: ${DATAVIEW_UNIQ} ${DATAVIEW_ACN} ${CP_FILES}
	mkdir -p $(dir $@)
	# asn2dataModel does not take the ACN files, and only calls asn1scc
	# asn2dataModel -o $(dir $@) -toC ${DATAVIEW_UNIQ} ${DATAVIEW_ACN}
	asn1scc -typePrefix asn1Scc -equal -fp AUTO -o $(dir $@) -c -uPER -ACN $^
	cp ${TOOL_INST}/share/AutoGUI/debug_messages.? dataview/C
	cp ${TOOL_INST}/share/AutoGUI/timeInMS.? dataview/C
	cd dataview/C && msgPrinter ../dataview-uniq.asn
	cd dataview/C && msgPrinterASN1 ../dataview-uniq.asn
	touch $@

# Compile the ASN.1 models in Python for the autogenerated GUIs
dataview/Python/built:	dataview/C/built gssw/GUI/wrappers/aadl2glueC_built sql_db/DV.py
	mkdir -p $(dir $@)
	asn2dataModel -o $(dir $@) -toPython ${DATAVIEW_UNIQ}
	$(MAKE) -C dataview/Python -f Makefile.python
	cp dataview/Python/* gssw/GUI/wrappers/python
	cp dataview/C/timeInMS.[ch] dataview/C/debug_messages.c gssw/GUI/wrappers/python
	cd gssw/GUI/wrappers/python && \
	   gcc -g -fPIC -c  gui_api.c ../../src/queue_manager.c timeInMS.c debug_messages.c -I. -I../../src && \
	   gcc -g -shared -o PythonAccess.so gui_api.o queue_manager.o timeInMS.o debug_messages.o -lrt
	mkdir -p binaries/gssw_GUI
	cp -f gssw/GUI/wrappers/python/* binaries/gssw_GUI
	cp -f gssw/GUI/wrappers/*.py binaries/gssw_GUI
	cp -f gssw/GUI/wrappers/*.ui binaries/gssw_GUI
	echo "errCodes = \\" >> binaries/gssw_GUI/datamodel.py
	taste-asn1-errCodes binaries/gssw_GUI/dataview-uniq.h >> binaries/gssw_GUI/datamodel.py
	if [ -f sql_db/db.info ]; then cd binaries/gssw_GUI && ln -fs ../../sql_db; fi
	cp -f -u gssw/GUI/src/* binaries/gssw_GUI
	#  Interface view must be placed in the gui folder to allow replaying MSCs
	cp -u ../InterfaceView.aadl binaries/gssw_GUI
	touch $@
dataview/QGenAda/built: ${DATAVIEW_UNIQ} # no context parameters except for C and Ada
	mkdir -p $(dir $@) && asn2dataModel -allboards -o $(dir $@) -toQGenAda $^
	cp -u $(dir $@)/* acs_algorithm/QGenAda/src
	touch $@

dataview/Ada/built: ${DATAVIEW_UNIQ} ${CP_FILES}
	mkdir -p $(dir $@)
	asn2dataModel -allboards -o $(dir $@) -toAda $^
	touch $@
	cd dataview/Ada && rm -f gnat.cfg GPS_project.gpr IgnoredExaminerWarnings.wrn runSpark.sh

clean:
	rm -rf binaries dataview
	$(MAKE) -C build -f Makefile.taste clean

.PHONY: clean simu compile-all-linux function-instances-linux function-types-linux build-default dataview build-rtems-ada dataview run_cv
