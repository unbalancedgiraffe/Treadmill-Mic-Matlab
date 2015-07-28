% Unfiltered spectrograms and dB scale frequency domain plots


subplot(2,2,1)
spectrogram(y(:,1),512,64,128,16000,'yaxis');
title('Speed 3 Inc 0');
subplot(2,2,2)
plot(f, yFreqdB(:,1));
title('Speed 3 Inc 0');
xlabel('Frequency')
ylabel('FFT (dB)')

subplot(2,2,3)
spectrogram(y(:,2),512,64,128,16000,'yaxis');
title('Speed 4 Inc 0');
subplot(2,2,4)
plot(f, yFreqdB(:,2));
title('Speed 3 Inc 0');
xlabel('Frequency')
ylabel('FFT (dB)')

figure
subplot(2,2,1)
spectrogram(y(:,3),512,64,128,16000,'yaxis');
title('Speed 5 Inc 0');
subplot(2,2,2)
plot(f, yFreqdB(:,3));
title('Speed 5 Inc 0');
xlabel('Frequency')
ylabel('FFT (dB)')

subplot(2,2,3)
spectrogram(y(:,4),512,64,128,16000,'yaxis');
title('Speed 6 Inc 0');
subplot(2,2,4)
plot(f, yFreqdB(:,4));
title('Speed 6 Inc 0');
xlabel('Frequency')
ylabel('FFT (dB)')

figure
subplot(2,2,1)
spectrogram(y(:,5),512,64,128,16000,'yaxis');
title('Speed 7 Inc 0');
subplot(2,2,2)
plot(f, yFreqdB(:,5));
title('Speed 7 Inc 0');
xlabel('Frequency')
ylabel('FFT (dB)')

subplot(2,2,3)
spectrogram(y(:,6),512,64,128,16000,'yaxis');
title('Speed 8 Inc 0');
subplot(2,2,4)
plot(f, yFreqdB(:,6));
title('Speed 8 Inc 0');
xlabel('Frequency')
ylabel('FFT (dB)')

figure
subplot(2,2,1)
spectrogram(y(:,7),512,64,128,16000,'yaxis');
title('Speed 3 Inc 1');
subplot(2,2,2)
plot(f, yFreqdB(:,7));
title('Speed 3 Inc 1');
xlabel('Frequency')
ylabel('FFT (dB)')

subplot(2,2,3)
spectrogram(y(:,8),512,64,128,16000,'yaxis');
title('Speed 3 Inc 2');
subplot(2,2,4)
plot(f, yFreqdB(:,8));
title('Speed 3 Inc 2');
xlabel('Frequency')
ylabel('FFT (dB)')

figure
subplot(2,2,1)
spectrogram(y(:,9),512,64,128,16000,'yaxis');
title('Speed 3 Inc 3');
subplot(2,2,2)
plot(f, yFreqdB(:,9));
title('Speed 3 Inc 3');
xlabel('Frequency')
ylabel('FFT (dB)')

subplot(2,2,3)
spectrogram(y(:,10),512,64,128,16000,'yaxis');
title('Speed 3 Inc 4');
subplot(2,2,4)
plot(f, yFreqdB(:,10));
title('Speed 3 Inc 4');
xlabel('Frequency')
ylabel('FFT (dB)')

figure
subplot(2,2,1)
spectrogram(y(:,11),512,64,128,16000,'yaxis');
title('Speed 3 Inc 5');
subplot(2,2,2)
plot(f, yFreqdB(:,11));
title('Speed 3 Inc 5');
xlabel('Frequency')
ylabel('FFT (dB)')

subplot(2,2,3)
spectrogram(y(:,12),512,64,128,16000,'yaxis');
title('Speed 4 Inc 0 NR');
subplot(2,2,4)
plot(f, yFreqdB(:,12));
title('Speed 4 Inc 0 NR');
xlabel('Frequency')
ylabel('FFT (dB)')

figure

subplot(2,2,1)
spectrogram(y(:,13),512,64,128,16000,'yaxis');
title('Speed 6 Inc 0 NR');
subplot(2,2,2)
plot(f, yFreqdB(:,13));
title('Speed 6 Inc 0 NR');
xlabel('Frequency')
ylabel('FFT (dB)')

subplot(2,2,3)
spectrogram(y(:,14),512,64,128,16000,'yaxis');
title('Speed 8 Inc 0 NR');
subplot(2,2,4)
plot(f, yFreqdB(:,14));
title('Speed 8 Inc 0 NR');
xlabel('Frequency')
ylabel('FFT (dB)')

