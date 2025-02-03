% File name
filename = "dat file here";

% Open the file
fid = fopen(filename, 'rb');

% Read data as float32
data = fread(fid, 'float32');

% Close the file
fclose(fid);

% Separate I and Q samples (assuming interleaved I/Q samples)
I = data(1:2:end); 
Q = data(2:2:end);  

% Plot I samples
figure;
plot(I);
title('I Samples');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

% Plot Q samples
figure;
plot(Q);
title('Q Samples');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

% Plot Frequency-Domain Signal (Spectrogram)
figure;
spectrogram(y, 256, 200, 256, fs, 'yaxis');
title('FMCW Signal Spectrogram');

% Amount of samples in .dat file
BytesPerSample = 8; 
fid = fopen(filename, 'r');
fseek(fid, 0, 'eof');
pos = ftell(fid);
fclose(fid);
NumSamples = pos / BytesPerSample