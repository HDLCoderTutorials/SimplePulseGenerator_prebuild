% This file is called by the Host_IO_DataCapture.slx model
% Bring up the property inspector by pressing Ctrl-shift-i in
% Host_IO_DataCapture model, under properties enter under callbacks
%
% Also used in the simulink test environment of DUT to setup various
% parameters for the simulation


%% Initialize parameters
%
% % For DAC NCO definition

% NCO parameters
Fo = 200.7e6;  % tone freq

ConverterSamplingRate = 2048e6;
DDC_DUC_factor = 4;

Fs = ConverterSamplingRate/DDC_DUC_factor;
Ts = 1/Fs; 

VectorSamplingFactor = 4;

fpga_clk_rate = Fs/VectorSamplingFactor;

fpga_Ts = 1/fpga_clk_rate;

N = 14;    % accum WL

Fs = 1/Ts;      
incrScale = (2^N)/Fs;
incr = round(Fo*incrScale/VectorSamplingFactor); % phase increment


%% 
PRF = 10; %12Hz seems to be the max for continuous streaming
PRF_period = 1/PRF; % seconds
PRF_count_period = PRF_period*fpga_clk_rate;

PulseWidth = 3e-6; % seconds
PulseWidth_count = PulseWidth*fpga_clk_rate; 

Range_Delay=1e-6; % seconds wlh
RangeDelayTrigger_count=Range_Delay*fpga_clk_rate; %wlh

frameSize = 1024; %wlh
actual_samples_per_frame = frameSize*4; %wlh