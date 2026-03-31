load('sample_data.mat')

data = class10_record.data;
time = class10_record.time;
num_chunks=10;
chunklength = length(data)/num_chunks;

[fC,AC,ParsevalC] = spectrumCB_demo(time,data,chunklength);

figure()
loglog(fC,AC)
hold on
loglog([1 1],[1e-6 1e-1]) %1 cpd
loglog([24/12.42 24/12.42],[1e-6 1e-1]) %semidiurnal tide
loglog([24/15.566 24/15.666],[1e-6 1e-1]) %local coriolis frequency

xlabel('Frequency [cpd]')
ylabel('\Phi_v (m/s)^2/cpd')
title('Sample Spectrum')