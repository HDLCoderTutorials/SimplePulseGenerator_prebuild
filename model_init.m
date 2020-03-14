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
PRF = 100e3;
PRF_period = 1/PRF; % seconds
PRF_count_period = PRF_period*fpga_clk_rate;

PulseWidth = 1e-6; % seconds
PulseWidth_count_width = PulseWidth*fpga_clk_rate/VectorSamplingFactor;