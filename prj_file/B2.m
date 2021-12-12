[m1,~] = audioread('M1.wav');
[m2,Fs] = audioread('M2.wav');
[m3,~] = audioread('M3.wav');

M1 = circshift(m1,-140);
M2 = circshift(m2,0);
M3 = circshift(m3,-100);

sM1=.828875.*M1;
PM1=bandpower(sM1);
disp(PM1);

sM2=M2;
PM2=bandpower(sM2);
disp(PM2);

sM3=.93.*M3;
PM3=bandpower(sM3);
disp(PM3);

%plot shifted scaled audio signals

%subplot(3,1,1);
%plot(sM1);
%legend("shifted and scaled M1");

%subplot(3,1,2);
%plot(sM2);
%legend("M2");

%subplot(3,1,3);
%plot(sM3);
%legend("shifted and scaled M3");
%FM=(sM1+sM2+sM3)./3;

t=0:1/Fs:(length(M2)-1)/Fs;  
sound(FM,Fs);

subplot(2,1,1);
plot(t,m1);
legend("M1");

subplot(2,1,2);
plot(t,FM);
legend("Average");

Nosi_power_M1=bandpower(m1,Fs,[4.2 5.8]);
Nosi_power_average=bandpower(FM,Fs,[4.2 5.8]);

disp("power of noise in M1:");
disp(Nosi_power_M1);
disp("power of noise in average:");
disp(Nosi_power_average);
