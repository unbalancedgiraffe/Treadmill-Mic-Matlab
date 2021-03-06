
% subplot(2,2,1)
% spectrogram(yhigh(:,test_case),512,64,128,16000,'yaxis');
% subplot(2,2,2)
% spectrogram(yhigh(:,13),512,64,128,16000,'yaxis');
% subplot(2,2,3)
% spectrogram(yhigh(:,12),512,64,128,16000,'yaxis');
% subplot(2,2,4)
% spectrogram(yhigh(:,11),512,64,128,16000,'yaxis');

subplot(2,2,1)
spectrogram(yhigh(:,1),512,64,[],16000,'yaxis');
title('Speed 3 Inc 0');
subplot(2,2,2)
plot(f, yFreqhighpos(:,1));
title('Speed 3 Inc 0');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(yhigh(:,2),512,64,[],16000,'yaxis');
title('Speed 4 Inc 0');
subplot(2,2,4)
plot(f, yFreqhighpos(:,2));
title('Speed 3 Inc 0');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(yhigh(:,3),512,64,[],16000,'yaxis');
title('Speed 5 Inc 0');
subplot(2,2,2)
plot(f, yFreqhighpos(:,3));
title('Speed 5 Inc 0');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(yhigh(:,4),512,64,[],16000,'yaxis');
title('Speed 6 Inc 0');
subplot(2,2,4)
plot(f, yFreqhighpos(:,4));
title('Speed 6 Inc 0');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(yhigh(:,5),512,64,[],16000,'yaxis');
title('Speed 7 Inc 0');
subplot(2,2,2)
plot(f, yFreqhighpos(:,5));
title('Speed 7 Inc 0');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(yhigh(:,6),512,64,[],16000,'yaxis');
title('Speed 8 Inc 0');
subplot(2,2,4)
plot(f, yFreqhighpos(:,6));
title('Speed 8 Inc 0');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(yhigh(:,7),512,64,[],16000,'yaxis');
title('Speed 3 Inc 1');
subplot(2,2,2)
plot(f, yFreqhighpos(:,7));
title('Speed 3 Inc 1');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(yhigh(:,8),512,64,[],16000,'yaxis');
title('Speed 3 Inc 2');
subplot(2,2,4)
plot(f, yFreqhighpos(:,8));
title('Speed 3 Inc 2');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(yhigh(:,9),512,64,[],16000,'yaxis');
title('Speed 3 Inc 3');
subplot(2,2,2)
plot(f, yFreqhighpos(:,9));
title('Speed 3 Inc 3');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(yhigh(:,10),512,64,[],16000,'yaxis');
title('Speed 3 Inc 4');
subplot(2,2,4)
plot(f, yFreqhighpos(:,10));
title('Speed 3 Inc 4');
xlabel('Frequency')
ylabel('FFT')

figure
subplot(2,2,1)
spectrogram(yhigh(:,11),512,64,[],16000,'yaxis');
title('Speed 3 Inc 5');
subplot(2,2,2)
plot(f, yFreqhighpos(:,11));
title('Speed 3 Inc 5');
xlabel('Frequency')
ylabel('FFT')
% High-pass-filtered, and non-dB scale frequency domain plots

subplot(2,2,3)
spectrogram(yhigh(:,12),512,64,[],16000,'yaxis');
title('Speed 4 Inc 0 NR');
subplot(2,2,4)
plot(f, yFreqhighpos(:,12));
title('Speed 4 Inc 0 NR');
xlabel('Frequency')
ylabel('FFT')

figure

subplot(2,2,1)
spectrogram(yhigh(:,13),512,64,[],16000,'yaxis');
title('Speed 6 Inc 0 NR');
subplot(2,2,2)
plot(f, yFreqhighpos(:,13));
title('Speed 6 Inc 0 NR');
xlabel('Frequency')
ylabel('FFT')

subplot(2,2,3)
spectrogram(yhigh(:,14),512,64,[],16000,'yaxis');
title('Speed 8 Inc 0 NR');
subplot(2,2,4)
plot(f, yFreqhighpos(:,14));
title('Speed 8 Inc 0 NR');
xlabel('Frequency')
ylabel('FFT')