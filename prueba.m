[x,fs]=  audioread("Recording_2.wav");
%load handel.mat
%filename = 'procesada.wav';
%fileID = fopen("prueba1.txt");
%data = textscan(fileID,'%f','Delimiter',',');
%fclose(fileID);

%val = [data{:}];
%plot(x);

y = sin(x);
z = fft(y);
%plot(z);
%z = fftshift(z);
N = length(y);
f = (-N/2:N/2-1)/N;
% x es la señal de audio, z es el espectro en frecuencia y a es la inversa
% de la transformada, osea el mismo audio original
a = ifft(z);
plot(f,abs(z));
%plot(a);