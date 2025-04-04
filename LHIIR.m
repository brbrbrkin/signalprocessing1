function [b, a] = LHIIR(cutoff_freq, sample_freq, N, filter_type)

pkg load signal

%Normalize cutoff
normal_cutoff = cutoff_freq / (0.5 * sample_freq);

% Design the filter coefficients directly
[b, a] = butter(N, normal_cutoff, filter_type);
