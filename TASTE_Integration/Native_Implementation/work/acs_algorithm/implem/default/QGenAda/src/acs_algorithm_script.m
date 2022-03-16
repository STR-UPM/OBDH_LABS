run Simulink_DataView_asn;

inports_positions  = zeros(1, 4);
bussel_positions   = zeros(1, 4);
outports_positions = zeros(1, 4);
buscre_positions   = zeros(1, 4);

n_inports  = 1 + 1 + 1 + 1 + 1 + 1;
n_outports = 1;

all_inports_created  = false;
all_outports_created = false;

if (exist('Step', 'file') == 4)
   load_system('Step');
   inportHan = find_system('Step','FindAll','on', 'SearchDepth', 1, 'BlockType','Inport');
   outportHan = find_system('Step','FindAll','on', 'SearchDepth', 1, 'BlockType','Outport');
   all_inports_created  = (length(inportHan) == n_inports);
   all_outports_created = (length(outportHan) == n_outports);
   % ---------------------------------------------------------------------------------
   % start by removing the Bus Selectors / then lines / finally ports
   % ---------------------------------------------------------------------------------
   % get the handles of all the lines connected to inports
   for i=1:length(inportHan)
      inports_positions(i,:) = get_param(inportHan(i),'Position'); % remember Inport's position
      line_structsIn(i)=get_param(inportHan(i),'LineHandles'); % get the structures
      inLinesHan(i)=line_structsIn(i).Outport;        % get the line connected to the block's Outport
      if (inLinesHan(i) ~= -1) % if exists
         dstBlock = get_param(inLinesHan(i),'DstBlockHandle'); % get the destination block's handle
         if (strcmp(get_param(dstBlock,'BlockType'),'BusSelector'))
            bussel_positions(i,:) = get_param(dstBlock,'Position'); % remember Bus Selector's position
            blockLineStructs = get_param(dstBlock,'LineHandles'); % get the line connected structures
            blockLineHandles = blockLineStructs.Outport; % get the line handlers connected to the bus's outports
            for j=1:length(blockLineHandles)
               if (blockLineHandles(j) ~= -1)
                  delete(blockLineHandles(j));
               end
            end
            delete_block(dstBlock); % delete it if it is a Bus Selector Block
         end
         delete(inLinesHan(i)); % delete the respective line
      end
      delete_block(inportHan(i)); % delete the outdated inport block
   end
   % now remove the outports
   for i=1:length(outportHan)
      outports_positions(i,:) = get_param(outportHan(i),'Position'); % remember Outport's position
      line_structsOut(i)=get_param(outportHan(i),'LineHandles'); % get the structures
      outLinesHan(i)=line_structsOut(i).Inport;       % get the line connected to the block's Inport
      if (outLinesHan(i) ~= -1) % if exists
         srcBlock = get_param(outLinesHan(i),'SrcBlockHandle'); % get the source block's handle
         if (strcmp(get_param(srcBlock,'BlockType'),'BusCreator'))
            buscre_positions(i,:) = get_param(srcBlock,'Position'); % remember Bus Creator's position
            blockLineStructs = get_param(srcBlock,'LineHandles'); % get the line connected structures
            blockLineHandles = blockLineStructs.Inport; % get the line handlers connected to the bus's outports
            for j=1:length(blockLineHandles)
                    if (blockLineHandles(j) ~= -1)
                            delete(blockLineHandles(j));
                    end
            end
            delete_block(srcBlock); % delete it if it is a Bus Creator Block
         end
         delete(outLinesHan(i)); % delete the respective line
      end
      delete_block(outportHan(i)); % delete the outdated outport block
   end
else
   new_system('Step');
   load_system('Step');
end

% These are the parameters for this Simulink function:
   % Name: BBT
   % Direction: PARAM_IN
   % Name: Omega
   % Direction: PARAM_IN
   % Name: K_PB
   % Direction: PARAM_IN
   % Name: K_PE
   % Direction: PARAM_IN
   % Name: M_M
   % Direction: PARAM_IN
   % Name: MT_Working
   % Direction: PARAM_IN
   % Name: Control
   % Direction: PARAM_OUT

inport_index = 0;
inport_index = inport_index + 1;
add_block('simulink/Sources/In1', 'Step/BBT');
if all_inports_created
   set_param('Step/BBT','Position', inports_positions(inport_index,:));
else
   set_param('Step/BBT','Position',[25 (inport_index * 100) 55 ((inport_index * 100) + 14)]);
end
set_param('Step/BBT','BusOutputAsStruct','on');
set_param('Step/BBT','UseBusObject','on');
set_param('Step/BBT','BusObject','T_B_b_T');
add_block('simulink/Commonly Used Blocks/Bus Selector','Step/BBT_T_B_b_T_BusSel');
add_line('Step','BBT/1','BBT_T_B_b_T_BusSel/1');
setOutputsBusSelector(T_B_b_T, 'Step/BBT_T_B_b_T_BusSel');
if all_inports_created
   set_param('Step/BBT_T_B_b_T_BusSel','Position', bussel_positions(inport_index,:));
else
   set_param('Step/BBT_T_B_b_T_BusSel','Position',[95 ((inport_index * 100) - 19) 100 ((inport_index * 100) + 19)]);
end
inport_index = inport_index + 1;
add_block('simulink/Sources/In1', 'Step/Omega');
if all_inports_created
   set_param('Step/Omega','Position', inports_positions(inport_index,:));
else
   set_param('Step/Omega','Position',[25 (inport_index * 100) 55 ((inport_index * 100) + 14)]);
end
set_param('Step/Omega','BusOutputAsStruct','on');
set_param('Step/Omega','UseBusObject','on');
set_param('Step/Omega','BusObject','T_Omega');
add_block('simulink/Commonly Used Blocks/Bus Selector','Step/Omega_T_Omega_BusSel');
add_line('Step','Omega/1','Omega_T_Omega_BusSel/1');
setOutputsBusSelector(T_Omega, 'Step/Omega_T_Omega_BusSel');
if all_inports_created
   set_param('Step/Omega_T_Omega_BusSel','Position', bussel_positions(inport_index,:));
else
   set_param('Step/Omega_T_Omega_BusSel','Position',[95 ((inport_index * 100) - 19) 100 ((inport_index * 100) + 19)]);
end
inport_index = inport_index + 1;
add_block('simulink/Sources/In1', 'Step/K_PB');
if all_inports_created
   set_param('Step/K_PB','Position', inports_positions(inport_index,:));
else
   set_param('Step/K_PB','Position',[25 (inport_index * 100) 55 ((inport_index * 100) + 14)]);
end
set_param('Step/K_PB','BusOutputAsStruct','on');
set_param('Step/K_PB','OutDataTypeStr','T_Float');
inport_index = inport_index + 1;
add_block('simulink/Sources/In1', 'Step/K_PE');
if all_inports_created
   set_param('Step/K_PE','Position', inports_positions(inport_index,:));
else
   set_param('Step/K_PE','Position',[25 (inport_index * 100) 55 ((inport_index * 100) + 14)]);
end
set_param('Step/K_PE','BusOutputAsStruct','on');
set_param('Step/K_PE','OutDataTypeStr','T_Float');
inport_index = inport_index + 1;
add_block('simulink/Sources/In1', 'Step/M_M');
if all_inports_created
   set_param('Step/M_M','Position', inports_positions(inport_index,:));
else
   set_param('Step/M_M','Position',[25 (inport_index * 100) 55 ((inport_index * 100) + 14)]);
end
set_param('Step/M_M','BusOutputAsStruct','on');
set_param('Step/M_M','OutDataTypeStr','T_Float');
inport_index = inport_index + 1;
add_block('simulink/Sources/In1', 'Step/MT_Working');
if all_inports_created
   set_param('Step/MT_Working','Position', inports_positions(inport_index,:));
else
   set_param('Step/MT_Working','Position',[25 (inport_index * 100) 55 ((inport_index * 100) + 14)]);
end
set_param('Step/MT_Working','BusOutputAsStruct','on');
set_param('Step/MT_Working','UseBusObject','on');
set_param('Step/MT_Working','BusObject','T_MT_Working');
add_block('simulink/Commonly Used Blocks/Bus Selector','Step/MT_Working_T_MT_Working_BusSel');
add_line('Step','MT_Working/1','MT_Working_T_MT_Working_BusSel/1');
setOutputsBusSelector(T_MT_Working, 'Step/MT_Working_T_MT_Working_BusSel');
if all_inports_created
   set_param('Step/MT_Working_T_MT_Working_BusSel','Position', bussel_positions(inport_index,:));
else
   set_param('Step/MT_Working_T_MT_Working_BusSel','Position',[95 ((inport_index * 100) - 19) 100 ((inport_index * 100) + 19)]);
end

outport_index = 0;
outport_index = outport_index + 1;
add_block('simulink/Sinks/Out1','Step/Control');
if all_outports_created
   set_param('Step/Control','Position', outports_positions(outport_index,:));
else
   set_param('Step/Control','Position',[430 (outport_index * 100) 460 ((outport_index * 100) + 14)]);
end
set_param('Step/Control','UseBusObject','on');
set_param('Step/Control','BusObject','T_Control');
add_block('simulink/Commonly Used Blocks/Bus Creator','Step/Control_T_Control_BusCre');
add_line('Step','Control_T_Control_BusCre/1','Control/1');
setInputsBusCreator(T_Control,'Step/Control_T_Control_BusCre');
set_param('Step/Control','UseBusObject','on');
set_param('Step/Control','BusOutputAsStruct','on');
 set_param('Step/Control_T_Control_BusCre','BusObject','T_Control');
if all_outports_created
   set_param('Step/Control_T_Control_BusCre','Position', buscre_positions(outport_index,:));
else
   set_param('Step/Control_T_Control_BusCre','Position',[360 ((outport_index * 100) - 19) 365 ((outport_index * 100) + 19)]);
end
set_param('Step/Control_T_Control_BusCre','UseBusObject','on');
set_param('Step/Control_T_Control_BusCre','NonVirtualBus','on');

set_param('Step','SaveOutput','off');
set_param('Step','SignalLogging','off');
set_param('Step','SaveTime','off')
set_param('Step','Solver','FixedStepDiscrete');
set_param('Step','SystemTargetFile','ert.tlc');
set_param('Step','TemplateMakefile','ert_default_tmf');
set_param('Step', 'PostCodeGenCommand', 'packNGo(buildInfo);');
set_param('Step','StrictBusMsg','ErrorLevel1')
save_system('Step');
close_system('Step');
