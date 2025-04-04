function applyIIR(b, a, input_signal, fs, filename)

pkg load signal
close all;

% Frequency response of the filter
%Using 1 as the gain is already inside the sos
freqz(b, a);

%Apply filter
filtered = filter(b, a, input_signal);

figure;
plot(filtered);
title('Filtered');

% Plot the impulse response
figure;
impz(b, a);
title('Impulse Response');

% Save the filtered signal to a .wav file
audiowrite(filename, filtered, fs);

% Display a message indicating that the file has been saved
disp(['Filtered signal saved to ' filename]);
