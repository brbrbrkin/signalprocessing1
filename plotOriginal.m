function plotOriginal(input_signal)

pkg load signal

%Plotting Original
figure;
plot(input_signal);
title('Original');

input_signal = abs(fft(input_signal));

figure;
plot(input_signal);
title('Original: Magnitude View');
