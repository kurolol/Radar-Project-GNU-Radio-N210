% Make FMCW signal to .dat file
fs          = 1e6;    % Sampling frequency (1 MHz)
Ts          = 1e-3;   % Duration of one FMCW chirp (1 ms)
B           = 1e6;    % Sweep bandwidth (1 MHz)
f_start     = 0;      % Start frequency
f_end       = B;      % End frequency
num_chirps  = 10000;  % Number of chirps to generate (adjust for length)

T = num_chirps * Ts;              % Total signal duration
t = 0 : 1/fs : T - 1/fs;          % Time vector
k = (f_end - f_start) / Ts;       % Chirp rate

% --- Generate Instantaneous Frequency ---
instantaneous_frequency = f_start + k .* mod(t, Ts);

% --- Integrate Frequency to get Phase ---
% phase(t) = 2*pi * integral of freq dt
phase = 2 * pi * cumtrapz(t, instantaneous_frequency);

% --- Generate FMCW signal in time domain ---
y = cos(phase);

% --- Plotting ---
% Time-Domain Signal
figure;
plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('FMCW Signal in Time Domain');

% Frequency-Domain (Spectrogram)
figure;
spectrogram(y, 256, 200, 256, fs, 'yaxis');
title('FMCW Signal Spectrogram');

% Instantaneous Frequency
figure;
plot(t, instantaneous_frequency);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Instantaneous Frequency of FMCW Signal');

% --- Save the FMCW Signal to a .dat file ---
fileID = fopen('fmcw_signal10s.dat', 'wb');
fwrite(fileID, y, 'float32');  % Save the signal as 32-bit float
fclose(fileID);

disp('FMCW signal generation complete.');
disp(['Number of samples written: ', num2str(length(y))]);
disp('Output file: fmcw_signal.dat');
