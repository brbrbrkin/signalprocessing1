function applyFilter(imp_response, input_signal, fs, filename)

pkg load signal
close all;
freqz(imp_response);

% Plot the impulse response
figure;
stem(imp_response);
title('Impulse Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

%Apply filter
filtered = filter(imp_response, 1, input_signal);

figure;
plot(filtered);
title('Filtered');

% Save the filtered signal to a .wav file
audiowrite(filename, filtered, fs);

% Display a message indicating that the file has been saved
disp(['Filtered signal saved to ' filename]);
