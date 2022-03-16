KAZOO?=kazoo
SPACECREATOR?=spacecreator.AppImage

POHI?=C
KAZOO_POHI_FLAGS=-p
ifeq ($(POHI), Ada)
    KAZOO_POHI_FLAGS=
endif

$(info # Using the PolyORB-Hi/$(POHI) middleware)
$(info #####################################)

# Here you can specify custom compiler/linker flags, and add folders containing
# external code you want to compile and link for a specific partition.
# Use upper case for the partition name:
#
# export <PARTITIONNAME>_USER_CFLAGS=...
# export <PARTITIONNAME>_USER_LDFLAGS=...
# export <PARTITIONNAME>_EXTERNAL_SOURCE_PATH=

# If you need to reset this Makefile to its original state, run:
# $ space-creator reset

# Get the list of ASN.1 files from Space Creator project file:
DISTFILES=$(shell qmake Native_Implementation.pro -o /tmp/null 2>&1)
ASN1_FILES=$(shell find ${DISTFILES} 2>/dev/null | egrep '\.asn$$|\.asn1$$')

all:	release

release:	work/glue_release
	rm -rf work/glue_debug
	rm -rf work/glue_coverage
	# $(MAKE) -C work check_targets # FIXME: check_targets is not a target!
	$(MAKE) -C work

debug:	work/glue_debug
	rm -rf work/glue_release
	rm -rf work/glue_coverage
	# $(MAKE) -C work check_targets
	$(MAKE) -C work

coverage: work/glue_coverage
	rm -rf work/glue_release
	rm -rf work/glue_debug
	# $(MAKE) -C work check_targets
	$(MAKE) -C work

# To build and run the system type e.g. 'make debug run'
run:
	$(MAKE) -C work run

# To run Cheddar/Marzhin for scheduling analysis, type 'make edit_cv'
edit_cv:
	$(MAKE) -C work run_cv

# Simulation target (experimental - for systems made of SDL functions only)
simu:	work/glue_simu
	$(MAKE) -C work
	$(MAKE) -C work/simulation -f Makefile.Simulation simu

skeletons:
	$(MAKE) work/skeletons_built

work/skeletons_built:	InterfaceView.aadl DataView.aadl
	$(KAZOO) --gw -o work
	$(MAKE) -C work dataview
	touch $@

work/glue_simu:	InterfaceView.aadl DataView.aadl
	$(KAZOO) -t SIMU --glue --gw
	$(MAKE) -C work dataview
	touch $@

work/glue_release:	InterfaceView.aadl DeploymentView.aadl DataView.aadl
	sed -i 's/CoverageEnabled => true/CoverageEnabled => false/g' DeploymentView.aadl || :
	$(KAZOO) $(KAZOO_POHI_FLAGS) --glue --gw -o work
	touch $@

work/glue_debug:	InterfaceView.aadl DeploymentView.aadl DataView.aadl
	sed -i 's/CoverageEnabled => true/CoverageEnabled => false/g' DeploymentView.aadl || :
	$(KAZOO) --debug $(KAZOO_POHI_FLAGS) --glue --gw -o work
	touch $@

work/glue_coverage:	InterfaceView.aadl DeploymentView.aadl DataView.aadl
	sed -i 's/CoverageEnabled => false/CoverageEnabled => true/g' DeploymentView.aadl || :
	$(KAZOO) --debug $(KAZOO_POHI_FLAGS) --glue --gw -o work
	touch $@

InterfaceView.aadl:	interfaceview.xml
	$(SPACECREATOR) --aadlconverter  -o $^ -t $(shell taste-config --prefix)/share/xml2aadl/interfaceview.tmplt -x $@

%: %.dv.xml Default_Deployment.aadl
	# Build using deployment view $^
	@# We must update the .aadl only if the dv.xml file has changed (more recent timestamp)
	if [ $< -nt $@.aadl ]; then 	$(SPACECREATOR) --dvconverter -o $< -t  $(shell taste-config --prefix)/share/dv2aadl/deploymentview.tmplt -x $@.aadl; fi;
	rsync --checksum $@.aadl DeploymentView.aadl

interfaceview: Default_Deployment.aadl
	# Build when no deployment view is open - use default
	rsync --checksum $< DeploymentView.aadl

Default_Deployment.aadl:	interfaceview.xml
	# Create/update a default deployment view for Linux target, if none other is provided
	$(SPACECREATOR) --aadlconverter  -o $^ -t $(shell taste-config --prefix)/share/xml2dv/interfaceview.tmplt -x $@ || exit 1
	rsync --checksum $@ DeploymentView.aadl

DeploymentView.aadl:	Default_Deployment.aadl

DataView.aadl: ${ASN1_FILES}
	taste-update-data-view $^

clean:
	rm -rf work/build work/dataview/built work/glue_simu
	rm -f *.aadl  # Interface and Deployment views in AADL are generated
	rm -f work/glue_release work/glue_debug work/glue_coverage work/skeletons_built
	find work -type d -name "wrappers" -exec rm -rf {} +
	find work -type d -name "*_GUI" -exec rm -rf {} +

.PHONY: clean release debug coverage skeletons simu run

