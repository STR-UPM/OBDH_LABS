KAZOO?=kazoo
# Here you can specify custom compiler/linker flags, and add folders containing
# external code you want to compile and link for a specific partition.
# Use upper case for the partition name:
# export <PARTITIONNAME>_USER_CFLAGS=...
# export <PARTITIONNAME>_USER_LDFLAGS=...
# export <PARTITIONNAME>_EXTERNAL_SOURCE_PATH=

all:	c

c:	work/glue_built
	$(MAKE) -C work

# Simulation target (experimental)
simu:	InterfaceView.aadl DeploymentView.aadl DataView.aadl ConcurrencyView_Properties.aadl
	$(KAZOO) -t SIMU --glue --gw
	$(MAKE) -C work

skeletons:
	$(MAKE) work/skeletons_built

work/skeletons_built:	InterfaceView.aadl DataView.aadl
	$(KAZOO) --gw -o work
	$(MAKE) -C work dataview
	touch $@

work/glue_built:	InterfaceView.aadl DeploymentView.aadl DataView.aadl ConcurrencyView_Properties.aadl
	$(KAZOO) --glue --gw -o work
	touch $@

clean:
	rm -rf work/build work/dataview
	rm -f work/glue_built work/skeletons_built
	find work -type d -name "wrappers" -exec rm -rf {} +
	find work -type d -name "*_GUI" -exec rm -rf {} +

.PHONY: clean skeletons c simu

