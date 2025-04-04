function imp_response = LHFilter(cutoff_freq, sample_freq, N, filter_type)

pkg load signal

%Normalize cutoff
normal_cutoff = cutoff_freq / (0.5 * sample_freq);

%FIR typed Pass Filter
imp_response = fir1(N, normal_cutoff, filter_type);

