function imp_response = BPFilter(Lcutoff_freq, Hcutoff_freq, sample_freq, N)

pkg load signal

filter_type = "bandpass";

%Normalize cutoff
normal_L = Lcutoff_freq / (0.5 * sample_freq);
normal_H = Hcutoff_freq / (0.5 * sample_freq);

%FIR typed Pass Filter
imp_response = fir1(N, [normal_L, normal_H], filter_type);

