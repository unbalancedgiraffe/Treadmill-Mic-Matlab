[y1, Fs] =  audioread('Data1.wav');
[y2, Fs] =  audioread('Data2.wav');
[y3, Fs] =  audioread('Data3.wav');
[y4, Fs] =  audioread('Data4.wav');
[y5, Fs] =  audioread('Data5.wav');
[y6, Fs] =  audioread('Data6.wav');
[y7, Fs] =  audioread('Data7.wav');
[y8, Fs] =  audioread('Data8.wav');
[y9, Fs] =  audioread('Data9.wav');
[y10,Fs] =  audioread('Data10.wav');
[y11, Fs] =  audioread('Data11.wav');
[y12, Fs] =  audioread('Data12.wav');
[y13, Fs] =  audioread('Data13.wav');
[y14, Fs] =  audioread('Data14.wav');

num_files = 14;
N = 450000;                 % Signal length

y = [y1(1:N), y2(1:N), y3(1:N), y4(1:N), y5(1:N), y6(1:N),...
    y7(1:N), y8(1:N), y9(1:N), y10(1:N), y11(1:N),...
    y12(1:N), y13(1:N), y14(1:N)];

fCut = 1400;                % cut off frequency for HPF
%% high pass

% spectrogram(y1,512,64,128,16000,'yaxis');

[b,a] = ellip(6,5,40,fCut/(Fs/2), 'high');      % generate hpf to cut out low level noise

%% filter y signals
yhigh = zeros(N, num_files);                    % create N by num_files matrix. Will store high pass filtered y results.

for i = 1:num_files
    yhigh(:, i) = filter(b, a, y(:, i));
end

%% Peaks
% [pks,locs] = findpeaks(y(:,test_case));
% [pkshigh, locshigh] = findpeaks(yhigh(:,test_case));
% [pkslow, locslow] = findpeaks(ylow(:,test_case));
% 
% cycles = diff(locshigh);
% meanCycle = mean(cycles);

%% fft

df = 16000/N;                   % differential frequency
f = 0:df:Fs/2-df;               % frequency vector from 0 to Fs/2 - df (only need to plot half of freq domain)

yFreq = zeros(N, num_files);            % fft results of y
yFreqhigh = zeros(N, num_files);        % fft results of yhigh

% yFreqdB = zeros(N/2, num_files);          % fft results of y(dB)
% yFreqdBhigh = zeros(N/2, num_files);      % fft results of yhigh(dB)

yFreqpos = zeros(N/2, num_files);           % fft results of y; positive frequencies only
yFreqhighpos = zeros(N/2, num_files);       % fft results of yhigh; positive frequencies only

yFreqSub = zeros(N/2, num_files);           % fft results of y spectral subtraction noise; positive freq only
ySub = zeros(N, num_files);                 % ifft of yFreqSub
   
for i = 1:num_files
    yFreq(:,i) = fftshift(fft(y(:,i)-mean(y(:,i)), N));
    yFreqhigh(:,i) = fftshift(fft(yhigh(:,i)-mean(yhigh(:,i)), N));
%     yFreqdB(:,i) = 20*log10(abs(yFreq(N/2+1:N,i)));
%     yFreqdBhigh(:,i) = 20*log10(abs(yFreqhigh(N/2+1:N, i)));
   
    yFreqpos(:,i) = abs(yFreq(N/2+1:N, i));
    yFreqhighpos(:,i) = abs(yFreqhigh(N/2+1:N, i));
end

%% Generate noise signal
% make a noise signal by taking Data13 from 0 to f1 Hz and f2 to 8kHz.
% Combine with Data14 from f1 to f2 Hz.

temp1 = abs(yFreqpos(:,13));
temp2 = abs(yFreqpos(:,14));

f1 = 2504/Fs*N;               
f2 = 3400/Fs*N;

noiseFreq= [temp1(1:f1); temp2(f1+1:f2); temp1(f2+1:N/2)];
noise = ifft(noiseFreq, 450000);
figure

%% Spectral subtraction

% Try playing with variables noiseFloor, alpha, and B

noiseFloor = 0;             % lowest magnitude allowed in noise freq domain
alpha = .5;                 % scaling constant

B = 1/500*ones(500,1);      % moving average filter
noiseFreq = filter(B,1,noiseFreq);      % filter

% spectrally subtract noiseFreq from all yFreqpos signals
for i = 1:num_files
    for j = 1:N/2
        yFreqSub(j,i) = abs(yFreqpos(j,i)) - alpha*noiseFreq(j);
        if yFreqSub(j,i) < noiseFloor
            yFreqSub(j,i) = noiseFloor;
        end
    end
    
    ySub(:,i) = ifft(yFreqSub(:,i), 450000);
end

subplot(2,2,1)
spectrogram(noise,512,64,[],16000,'yaxis');
subplot(2,2,2)
plot(f, noiseFreq)

%% Alternate spectral subtraction version that uses high-pass filtered noise and y signals

% %% Generate noise signal
% % make a noise signal by taking Data13 from 0 to f1 Hz and f2 to 8kHz.
% % Combine with Data14 from f1 to f2 Hz.
% 
% temp1 = abs(yFreqhighpos(:,13));
% temp2 = abs(yFreqhighpos(:,14));
% 
% f1 = 2504/Fs*N;               
% f2 = 3400/Fs*N;
% 
% noiseFreq= [temp1(1:f1); temp2(f1+1:f2); temp1(f2+1:N/2)];
% noise = ifft(noiseFreq, 450000);
% figure
% 
% %% Spectral subtraction
% 
% % Try playing with variables noiseFloor, alpha, and B
% 
% noiseFloor = 0;             % lowest magnitude allowed in noise freq domain
% alpha = .5;                 % scaling constant
% 
% B = 1/500*ones(500,1);      % moving average filter
% noiseFreq = filter(B,1,noiseFreq);      % filter
% 
% % spectrally subtract noiseFreq from all yFreqpos signals
% for i = 1:num_files
%     for j = 1:N/2
%         yFreqSub(j,i) = yFreqhighpos(j,i) - alpha*noiseFreq(j);
%         if yFreqSub(j,i) < noiseFloor
%             yFreqSub(j,i) = noiseFloor;
%         end
%     end
%     
%     ySub(:,i) = ifft(yFreqSub(:,i), 450000);
% end