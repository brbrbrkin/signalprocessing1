freq_sample = 44100;
recorder = audiorecorder(freq_sample, 16, 1);
record(recorder);
duration = 3;
pause(duration);
stop(recorder);
_audio = getaudiodata(recorder);
filename = "pds.wav";
audiowrite(filename, _audio, freq_sample);
plot(_audio)
