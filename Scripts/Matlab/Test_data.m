% Importing the data
T = readtable('Test_data.xls');

% Variable asignation
t = T.Var1;             % Time interval = [0-0.319844]
y = T.Var2;
y_row = transpose(y);

% From samples to time
Fs = (1/0.000156);
time_vector = 0:1/Fs:2048/Fs-1/Fs;

% Creation of figure window
figure;
plot(time_vector,y_row);
xlim([0 0.319844])
title('Test data visualzation');
xlabel('Time [s]');
ylabel('Amplitude');

% To hide the Hilbert Spectrum and show the EMD, just erase the '%' from
% '%hht(imf,Fs)' and '[imf,residual,info] = emd(y,'Interpolation','pchip');'

%[imf,residual,info] = emd(y,'Interpolation','pchip');      % Saving data of IMFs, residual and aditional info for diagnostic purposes
emd(y,'Interpolation','pchip','Display',1)                  % For visualization purposes

%hht(imf,Fs)