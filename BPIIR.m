function [b, a] = BPIIR(Lcutoff_freq, Hcutoff_freq, sample_freq, N)

pkg load signal

%Normalize cutoff
normal_L = Lcutoff_freq / (0.5 * sample_freq);
normal_H = Hcutoff_freq / (0.5 * sample_freq);

% Design the filter coefficients directly
[b, a] = butter(N, [normal_L, normal_H], "bandpass");
