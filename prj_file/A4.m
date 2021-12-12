fileID = fopen('Filter_h[n].txt');
d=fgets(fileID);
data=fscanf(fileID, '%f', [1 inf]);
data = data';
fclose(fileID);

[M1,Fs] = audioread('M1.wav');
FM1=conv(M1,data);

[M2,~] = audioread('M2.wav');
FM2=conv(M2,data);

[M3,~] = audioread('M3.wav');
FM3=conv(M3,data);
plot(FM3);

tb=0:1/Fs:(length(M1)-1)/Fs;
ta=0:1/Fs:(length(FM1)-1)/Fs;

subplot(3,2,1);
plot(tb,M1);
legend("M1");
xlabel("");

subplot(3,2,2);
plot(ta,FM1);
legend("filter M1");
xlabel("");

subplot(3,2,3);
plot(tb,M2);
legend("M2");
xlabel("");

subplot(3,2,4);
plot(ta,FM2);
legend("filter M2");
xlabel("");

subplot(3,2,5);
plot(tb,M3);
legend("M3");
xlabel("");

subplot(3,2,6);
plot(ta,FM3);
legend("filter M3");
xlabel("");

EM1=sum(abs(M1).^2);
disp("energy of M1");
disp(EM1);

EFM1=sum(abs(FM1).^2);
disp("energy of filtered M1");
disp(EFM1);

disp("energy of noise M1");
disp(EM1-EFM1);

EM2=sum(abs(M2).^2);
disp("energy of M2");
disp(EM2);


EFM2=sum(abs(FM2).^2);
disp("energy of filtered M2");
disp(EFM2);

disp("energy of noise M2");
disp(EM2-EFM2);

EM3=sum(abs(M3).^2);
disp("energy of M3");
disp(EM3);


EFM3=sum(abs(FM3).^2);
disp("energy of filtered M3");
disp(EFM3);

disp("energy of noise M3");
disp(EM3-EFM3);
