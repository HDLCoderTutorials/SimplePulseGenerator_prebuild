IPAddr = 'ip:192.168.1.101';


%% AXI4 Stream IIO Write registers
% NOTE: This is a place holder based on auto-generated templates. Please modify these values according to your FPGA design
AXI4SReadObj = pspshared.libiio.axistream.read(...
                  'IPAddress',IPAddr,...
                  'SamplesPerFrame',1024,...
                  'DataType','ufix128',...
                  'Timeout',0.1);
setup(AXI4SReadObj);

AXI4SWriteObj = pspshared.libiio.axistream.write(...
                  'IPAddress',IPAddr,...
                  'SamplesPerFrame',1024,...                  
                  'Timeout',0.1);
setup(AXI4SWriteObj,fi(zeros(1024,1),numerictype('ufix128')));


%% AXI4 MM IIO Write registers
FrameSizeInput =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('104')); 
StreamEn =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('108')); 
TriggerFreq =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('10C')); 
AutoTrigEn =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('110')); 
IQ_SelectCh =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('114')); 
NCO_incr_AXI =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('118')); 
NCO_DAC_Ch0_AXI =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('11C')); 
NCO_DAC_Ch1_AXI =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('120')); 
NCO_DAC_Ch2_AXI =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('124')); 
NCO_DAC_Ch3_AXI =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('128')); 
DebugSource =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('12C')); 
PRF_count_period =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('130')); 
RangeDelayTrigger_count =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('138')); 
PulseWidth_count =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('13C')); 
NCO_end_incr_AXI =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('100')); 
NCO_step_value_AXI =  pspshared.libiio.aximm.write(...
                   'IPAddress',IPAddr,...
                   'AddressOffset',hex2dec('140')); 


%% AXI4 MM IIO Read registers
AXI4_AFIFO_Full = pspshared.libiio.aximm.read(...
                 'IPAddress',IPAddr,...
                 'AddressOffset',hex2dec('134'),...
                 'DataType','uint32');


%% Setup() AXI4 MM IIO Objects
% NOTE: These are placeholder values. Please update this section according to your design

% Setup AXI4MM Read IIO objects
setup(AXI4_AFIFO_Full); 
% Setup AXI4MM Write IIO objects
setup(FrameSizeInput,uint32(0)); 
setup(StreamEn,boolean(0)); 
setup(TriggerFreq,uint32(0)); 
setup(AutoTrigEn,boolean(0)); 
setup(IQ_SelectCh,uint32(0)); 
setup(NCO_incr_AXI,int32(0)); 
setup(NCO_DAC_Ch0_AXI,fi(0,numerictype('ufix8_En7'))); 
setup(NCO_DAC_Ch1_AXI,fi(0,numerictype('ufix8_En7'))); 
setup(NCO_DAC_Ch2_AXI,fi(0,numerictype('ufix8_En7'))); 
setup(NCO_DAC_Ch3_AXI,fi(0,numerictype('ufix8_En7'))); 
setup(DebugSource,uint32(0)); 
setup(PRF_count_period,uint32(0)); 
setup(RangeDelayTrigger_count,uint32(0)); 
setup(PulseWidth_count,uint32(0)); 
setup(NCO_end_incr_AXI,int32(0)); 
setup(NCO_step_value_AXI,int32(0)); 


%% Step() AXI4 MM IIO Objects
% NOTE: These are placeholder values. Please update this section according to your design

% ---- Step AXI4MM Read IIO objects ---- 
% step(AXI4_AFIFO_Full); 
% ---- Step AXI4MM Write IIO objects ---- 
% step(FrameSizeInput,uint32(0)); 
% step(StreamEn,boolean(0)); 
% step(TriggerFreq,uint32(0)); 
% step(AutoTrigEn,boolean(0)); 
% step(IQ_SelectCh,uint32(0)); 
% step(NCO_incr_AXI,int32(0)); 
% step(NCO_DAC_Ch0_AXI,fi(0,numerictype('ufix8_En7'))); 
% step(NCO_DAC_Ch1_AXI,fi(0,numerictype('ufix8_En7'))); 
% step(NCO_DAC_Ch2_AXI,fi(0,numerictype('ufix8_En7'))); 
% step(NCO_DAC_Ch3_AXI,fi(0,numerictype('ufix8_En7'))); 
% step(DebugSource,uint32(0)); 
% step(PRF_count_period,uint32(0)); 
% step(RangeDelayTrigger_count,uint32(0)); 
% step(PulseWidth_count,uint32(0)); 
% step(NCO_end_incr_AXI,int32(0)); 
% step(NCO_step_value_AXI,int32(0)); 
