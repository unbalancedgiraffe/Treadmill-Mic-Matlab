% High-pass-filtered, spectrally subtracted spectrograms and non-dB
% scale frequency domain plots

subplot(2,2,1)
spectrogram(ySub(:,1),512,64,128,16000,'yaxis');
title('Speed 3 Inc 0');
subplot(2,2,2)
plot(f, yFreqSub(:,1));
title('Speed 3 Inc 0');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(ySub(:,2),512,64,128,16000,'yaxis');
title('Speed 4 Inc 0');
subplot(2,2,4)
plot(f, yFreqSub(:,2));
title('Speed 3 Inc 0');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(ySub(:,3),512,64,128,16000,'yaxis');
title('Speed 5 Inc 0');
subplot(2,2,2)
plot(f, yFreqSub(:,3));
title('Speed 5 Inc 0');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(ySub(:,4),512,64,128,16000,'yaxis');
title('Speed 6 Inc 0');
subplot(2,2,4)
plot(f, yFreqSub(:,4));
title('Speed 6 Inc 0');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(ySub(:,5),512,64,128,16000,'yaxis');
title('Speed 7 Inc 0');
subplot(2,2,2)
plot(f, yFreqSub(:,5));
title('Speed 7 Inc 0');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(ySub(:,6),512,64,128,16000,'yaxis');
title('Speed 8 Inc 0');
subplot(2,2,4)
plot(f, yFreqSub(:,6));
title('Speed 8 Inc 0');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(ySub(:,7),512,64,128,16000,'yaxis');
title('Speed 3 Inc 1');
subplot(2,2,2)
plot(f, yFreqSub(:,7));
title('Speed 3 Inc 1');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(ySub(:,8),512,64,128,16000,'yaxis');
title('Speed 3 Inc 2');
subplot(2,2,4)
plot(f, yFreqSub(:,8));
title('Speed 3 Inc 2');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(ySub(:,9),512,64,128,16000,'yaxis');
title('Speed 3 Inc 3');
subplot(2,2,2)
plot(f, yFreqSub(:,9));
title('Speed 3 Inc 3');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(ySub(:,10),512,64,128,16000,'yaxis');
title('Speed 3 Inc 4');
subplot(2,2,4)
plot(f, yFreqSub(:,10));
title('Speed 3 Inc 4');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(ySub(:,11),512,64,128,16000,'yaxis');
title('Speed 3 Inc 5');
subplot(2,2,2)
plot(f, yFreqSub(:,11));
title('Speed 3 Inc 5');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(ySub(:,12),512,64,128,16000,'yaxis');
title('Speed 4 Inc 0 NR');
subplot(2,2,4)
plot(f, yFreqSub(:,12));
title('Speed 4 Inc 0 NR');
xlabel('Frequency')
ylabel('FFT')

figure

subplot(2,2,1)
spectrogram(ySub(:,13),512,64,128,16000,'yaxis');
title('Speed 6 Inc 0 NR');
subplot(2,2,2)
plot(f, yFreqSub(:,13));
title('Speed 6 Inc 0 NR');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(ySub(:,14),512,64,128,16000,'yaxis');
title('Speed 8 Inc 0 NR');
subplot(2,2,4)
plot(f, yFreqSub(:,14));
title('Speed 8 Inc 0 NR');
xlabel('Frequency')
ylabel('FFT')

