[M2,Fs] = audioread('M2.wav');
PM2=M2(47936:49280);
B = flipud(PM2);

[M1,~] = audioread('M1.wav');
[M3,~] = audioread('M3.wav');


MM1=conv(M1,B);
MM2=conv(M2,B);
MM3=conv(M3,B);

t=0:1/Fs:(length(M2)-1)/Fs;  

subplot(3,1,1);
plot(MM1);
subplot(3,1,2);
plot(MM2);
subplot(3,1,3);
plot(MM3);