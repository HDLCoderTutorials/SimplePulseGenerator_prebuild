% This file is called by the Host_IO_DataCapture.slx model
% Bring up the property inspector by pressing Ctrl-shift-i in
% Host_IO_DataCapture model, under properties enter under callbacks
%
% Also used in the simulink test environment of DUT to setup various
% parameters for the simulation


%% Initialize parameters
%
% % For DAC NCO definition



ConverterSamplingRate = 2048e6;
DDC_DUC_factor = 4;

Fs = ConverterSamplingRate/DDC_DUC_factor;
Ts = 1/Fs; 

VectorSamplingFactor = 4;

fpga_clk_rate = Fs/VectorSamplingFactor;

fpga_Ts = 1/fpga_clk_rate;


%% 
PRF = 10000; %12Hz seems to be the max for continuous streaming
PRF_period = 1/PRF; % seconds
PRF_count_period = PRF_period*fpga_clk_rate;

PulseWidth = 5e-6; % seconds
PulseWidth_count = PulseWidth*fpga_clk_rate;

Range_Delay=1/fpga_clk_rate; % seconds wlh just on clock now to see start of pulse
RangeDelayTrigger_count=Range_Delay*fpga_clk_rate; %wlh

 frameSize = PulseWidth_count+256; %wlh
%frameSize = 1536; %wlh
actual_samples_per_frame = frameSize*4; %wlh

N = 14;    % accum WL

f0 = 150e6;
f1 = 200e6; 

start_inc = round (((f0*2^N)/fpga_clk_rate)/VectorSamplingFactor);
end_inc = round (((f1*2^N)/fpga_clk_rate)/VectorSamplingFactor);


%Pulse width and frequencies must be chosen so that LFM_counter_inc is an
%integer, will use floor here which changes end freq to slightly less in
%some cases

LFM_counter_inc = floor((end_inc-start_inc)/PulseWidth_count);

% adjust end_inc for counter limitation

end_inc = start_inc + LFM_counter_inc*PulseWidth_count;

actual_end_freq = end_inc/(2^(N-1)-1)*256;

fprintf('Calculated chirp frequencies based on integer counter limitation:\n');
fprintf('%.0fMHz %.0fMHz\n', f0/1e6, actual_end_freq);

% LFM Counter setup
% These are the parameters to the masked subsystem HDL Counter
issigned = 1; % 0 - unsigned, 1 - signed
CountInit = 0;
CountFracLen = 0;
CountWordLen = N;
freerun=1;
CountFrom = 0;
CountDir = 0; % 0-up, 1-down
