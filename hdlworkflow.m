%--------------------------------------------------------------------------
% HDL Workflow Script
% Generated with MATLAB 9.7 (R2019b) at 15:36:31 on 02/04/2020
% This script was generated using the following parameter values:
%     Filename  : 'C:\Projects\MATLAB\HDLCoder\SimplePulseGenerator_prebuild\hdlworkflow.m'
%     Overwrite : true
%     Comments  : true
%     Headers   : true
%     DUT       : 'SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture'
% To view changes after modifying the workflow, run the following command:
% >> hWC.export('DUT','SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture');
%--------------------------------------------------------------------------

%% Load the Model
load_system('SimplePulseGenerator_4x4_HDL_IQ');

%% Restore the Model to default HDL parameters
%hdlrestoreparams('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture');

%% Model HDL Parameters
%% Set Model 'SimplePulseGenerator_4x4_HDL_IQ' HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'AdaptivePipelining', 'off');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'HDLSubsystem', 'SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'ReferenceDesign', 'ADC & DAC XM500 Balun Single-Ended 4x4 IQ Mode');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'ReferenceDesignParameter', {'MW_AXIS_DATA_WIDTH','128','MW_ADC_SAMPLE_RATE','2048','MW_ADC_DECIMATION_MODE','4','MW_ADC_SAMPLES_PER_CLOCK','4','MW_ADC_MIXER_TYPE','Fine','MW_PLL_REF_CLK','245.760','MW_DAC_SAMPLE_RATE','2048','MW_DAC_INTERPOLATION_MODE','4','MW_DAC_SAMPLES_PER_CLOCK','4','MW_DAC_MIXER_TYPE','Fine','MW_TILE_CLK','128.000','DUTSynthFreqMHz','128.000','MW_ENABLE_WIDE_DATAWIDTH','false','MW_ADC_TILE0_ACTIVE','true','MW_ADC_TILE0_CHANNELS','0 1 2 3','MW_ADC_TILE1_ACTIVE','true','MW_ADC_TILE1_CHANNELS','0 1 2 3','MW_ADC_TILE2_ACTIVE','false','MW_ADC_TILE2_CHANNELS','0','MW_ADC_TILE3_ACTIVE','false','MW_ADC_TILE3_CHANNELS','0','MW_DAC_TILE0_ACTIVE','false','MW_DAC_TILE0_CHANNELS','0','MW_DAC_TILE1_ACTIVE','true','MW_DAC_TILE1_CHANNELS','0 1 2 3'});
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'ResetType', 'Synchronous');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'SynthesisTool', 'Xilinx Vivado');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'SynthesisToolChipFamily', 'Zynq UltraScale+ RFSoC');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'SynthesisToolDeviceName', 'xczu28dr-ffvg1517-2-e');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'SynthesisToolPackageName', '');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'SynthesisToolSpeedValue', '');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'TargetDirectory', 'hdl_prj\hdlsrc');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'TargetFrequency', 128);
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'TargetPlatform', 'Xilinx Zynq UltraScale+ RFSoC ZCU111 Evaluation Kit [Rev 1.0]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ', 'Workflow', 'IP Core Generation');

% Set SubSystem HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture', 'AXI4SlaveIDWidth', '12');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture', 'IPCoreName', 'ADC_DAC_IQ_IP');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture', 'ProcessorFPGASynchronization', 'Free running');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/MM2S_Valid', 'IOInterface', 'AXI4-Stream DMA Slave');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/MM2S_Valid', 'IOInterfaceMapping', 'Valid');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/MM2S_Data', 'IOInterface', 'AXI4-Stream DMA Slave');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/MM2S_Data', 'IOInterfaceMapping', 'Data');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/S2MM_Tready', 'IOInterface', 'AXI4-Stream DMA Master');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/S2MM_Tready', 'IOInterfaceMapping', 'Ready (optional)');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_I_DataIn ', 'IOInterface', 'Tile1 ADC Mixer Ch1-I Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_I_DataIn ', 'IOInterfaceMapping', '[0:63]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_Q_DataIn', 'IOInterface', 'Tile1 ADC Mixer Ch1-Q Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_Q_DataIn', 'IOInterfaceMapping', '[0:63]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_IQ_ValidIn', 'IOInterface', 'Tile1 ADC Mixer Ch1-IQ Valid');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_IQ_ValidIn', 'IOInterfaceMapping', '[0]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_I_DataIn', 'IOInterface', 'Tile1 ADC Mixer Ch2-I Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_I_DataIn', 'IOInterfaceMapping', '[0:63]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_Q_DataIn', 'IOInterface', 'Tile1 ADC Mixer Ch2-Q Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_Q_DataIn', 'IOInterfaceMapping', '[0:63]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_IQ_ValidIn', 'IOInterface', 'Tile1 ADC Mixer Ch2-IQ Valid');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_IQ_ValidIn', 'IOInterfaceMapping', '[0]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch1_I_DataIn', 'IOInterface', 'Tile2 ADC Mixer Ch1-I Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch1_I_DataIn', 'IOInterfaceMapping', '[0:63]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch1_Q_DataIn', 'IOInterface', 'Tile2 ADC Mixer Ch1-Q Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch1_Q_DataIn', 'IOInterfaceMapping', '[0:63]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch1_IQ_ValidIn', 'IOInterface', 'Tile2 ADC Mixer Ch1-IQ Valid');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch1_IQ_ValidIn', 'IOInterfaceMapping', '[0]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch2_I_Data', 'IOInterface', 'Tile2 ADC Mixer Ch2-I Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch2_I_Data', 'IOInterfaceMapping', '[0:63]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch2_Q_Data', 'IOInterface', 'Tile2 ADC Mixer Ch2-Q Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch2_Q_Data', 'IOInterfaceMapping', '[0:63]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch2_Q_Valid', 'IOInterface', 'Tile2 ADC Mixer Ch2-IQ Valid');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile2_Ch2_Q_Valid', 'IOInterfaceMapping', '[0]');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/FrameSizeInput', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/FrameSizeInput', 'IOInterfaceMapping', 'x"104"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/StreamEn', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/StreamEn', 'IOInterfaceMapping', 'x"108"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/TriggerFreq', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/TriggerFreq', 'IOInterfaceMapping', 'x"10C"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/AutoTrigEn', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/AutoTrigEn', 'IOInterfaceMapping', 'x"110"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/IQ_SelectCh', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/IQ_SelectCh', 'IOInterfaceMapping', 'x"114"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_incr_AXI', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_incr_AXI', 'IOInterfaceMapping', 'x"118"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_DAC_Ch0_AXI', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_DAC_Ch0_AXI', 'IOInterfaceMapping', 'x"11C"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_DAC_Ch1_AXI', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_DAC_Ch1_AXI', 'IOInterfaceMapping', 'x"120"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_DAC_Ch2_AXI', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_DAC_Ch2_AXI', 'IOInterfaceMapping', 'x"124"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_DAC_Ch3_AXI', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_DAC_Ch3_AXI', 'IOInterfaceMapping', 'x"128"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/DebugSource', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/DebugSource', 'IOInterfaceMapping', 'x"12C"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/PRF_count_period', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/PRF_count_period', 'IOInterfaceMapping', 'x"130"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/RangeDelayTrigger_count', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/RangeDelayTrigger_count', 'IOInterfaceMapping', 'x"138"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/PulseWidth_count', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/PulseWidth_count', 'IOInterfaceMapping', 'x"13C"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_end_incr_AXI', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_end_incr_AXI', 'IOInterfaceMapping', 'x"100"');

% Set Inport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_step_value_AXI', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_step_value_AXI', 'IOInterfaceMapping', 'x"140"');

% Set MATLABSystem HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_Transmit/NCO HDL Optimized1', 'LUTRegisterResetType', 'none');

% Set MATLABSystem HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_Transmit/NCO HDL Optimized2', 'LUTRegisterResetType', 'none');

% Set MATLABSystem HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_Transmit/NCO HDL Optimized3', 'LUTRegisterResetType', 'none');

% Set MATLABSystem HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/NCO_Transmit/NCO HDL Optimized4', 'LUTRegisterResetType', 'none');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/S2MM_Valid', 'IOInterface', 'AXI4-Stream DMA Master');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/S2MM_Valid', 'IOInterfaceMapping', 'Valid');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/S2MM_Data', 'IOInterface', 'AXI4-Stream DMA Master');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/S2MM_Data', 'IOInterfaceMapping', 'Data');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/MM2S_Ready', 'IOInterface', 'AXI4-Stream DMA Slave');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/MM2S_Ready', 'IOInterfaceMapping', 'Ready (optional)');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_I_Data', 'IOInterface', 'Tile2 DAC Mixer Ch1-I Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_I_Data', 'IOInterfaceMapping', '[0:63]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_Q_Data', 'IOInterface', 'Tile2 DAC Mixer Ch1-Q Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_Q_Data', 'IOInterfaceMapping', '[0:63]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_IQ_Valid', 'IOInterface', 'Tile2 DAC Mixer Ch1-IQ Valid');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch1_IQ_Valid', 'IOInterfaceMapping', '[0]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_I_Data', 'IOInterface', 'Tile2 DAC Mixer Ch2-I Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_I_Data', 'IOInterfaceMapping', '[0:63]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_Q_Data', 'IOInterface', 'Tile2 DAC Mixer Ch2-Q Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_Q_Data', 'IOInterfaceMapping', '[0:63]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_IQ_Valid', 'IOInterface', 'Tile2 DAC Mixer Ch2-IQ Valid');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch2_IQ_Valid', 'IOInterfaceMapping', '[0]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_I_Data', 'IOInterface', 'Tile2 DAC Mixer Ch3-I Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_I_Data', 'IOInterfaceMapping', '[0:63]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_Q_Data', 'IOInterface', 'Tile2 DAC Mixer Ch3-Q Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_Q_Data', 'IOInterfaceMapping', '[0:63]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_IQ_Valid', 'IOInterface', 'Tile2 DAC Mixer Ch3-IQ Valid');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_IQ_Valid', 'IOInterfaceMapping', '[0]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_I_Data1', 'IOInterface', 'Tile2 DAC Mixer Ch4-I Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_I_Data1', 'IOInterfaceMapping', '[0:63]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_Q_Data1', 'IOInterface', 'Tile2 DAC Mixer Ch4-Q Data [0:127]');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch3_Q_Data1', 'IOInterfaceMapping', '[0:63]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch4_IQ_Valid', 'IOInterface', 'Tile2 DAC Mixer Ch4-IQ Valid');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/Tile1_Ch4_IQ_Valid', 'IOInterfaceMapping', '[0]');

% Set Outport HDL parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/AXI4_AFIFO_Full', 'IOInterface', 'AXI4');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture/AXI4_AFIFO_Full', 'IOInterfaceMapping', 'x"134"');


%% Workflow Configuration Settings
% Construct the Workflow Configuration Object with default settings
hWC = hdlcoder.WorkflowConfig('SynthesisTool','Xilinx Vivado','TargetWorkflow','IP Core Generation');

% Specify the top level project directory
hWC.ProjectFolder = 'hdl_prj';
hWC.ReferenceDesignToolVersion = '2018.3';
hWC.IgnoreToolVersionMismatch = false;

% Set Workflow tasks to run
hWC.RunTaskGenerateRTLCodeAndIPCore = false;
hWC.RunTaskCreateProject = false;
hWC.RunTaskGenerateSoftwareInterfaceModel = false;
hWC.RunTaskBuildFPGABitstream = false;
hWC.RunTaskProgramTargetDevice = true;

% Set properties related to 'RunTaskGenerateRTLCodeAndIPCore' Task
hWC.IPCoreRepository = '';
hWC.GenerateIPCoreReport = true;

% Set properties related to 'RunTaskCreateProject' Task
hWC.Objective = hdlcoder.Objective.None;
hWC.AdditionalProjectCreationTclFiles = '';
hWC.EnableIPCaching = true;

% Set properties related to 'RunTaskGenerateSoftwareInterfaceModel' Task
hWC.OperatingSystem = 'Linux';

% Set properties related to 'RunTaskBuildFPGABitstream' Task
hWC.RunExternalBuild = true;
hWC.TclFileForSynthesisBuild = hdlcoder.BuildOption.Default;
hWC.CustomBuildTclFile = '';

% Set properties related to 'RunTaskProgramTargetDevice' Task
hWC.ProgrammingMethod = hdlcoder.ProgrammingMethod.Custom;

% Validate the Workflow Configuration Object
hWC.validate;

%% Run the workflow
hdlcoder.runWorkflow('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture', hWC);
