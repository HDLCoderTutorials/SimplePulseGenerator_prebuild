% Load the Model
load_system('SimplePulseGenerator_4x4_HDL_IQ');

% Model HDL Parameters
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ','HDLSubsystem','SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ','ReferenceDesign','ADC & DAC XM500 Balun Single-Ended 4x4 IQ Mode');
hdlset_param('SimplePulseGenerator_4x4_HDL_IQ','TargetPlatform','Xilinx Zynq UltraScale+ RFSoC ZCU111 Evaluation Kit [Rev 1.0]');

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

% Set properties related to 'RunTaskProgramTargetDevice' Task
hWC.ProgrammingMethod = hdlcoder.ProgrammingMethod.Custom;

% Validate the Workflow Configuration Object
hWC.validate;

% Run the workflow
hdlcoder.runWorkflow('SimplePulseGenerator_4x4_HDL_IQ/ADC_Triggered_Data_Capture', hWC);
