[M1,Fs] = audioread('M1.wav');
[M2,~] = audioread('M2.wav');
[M3,~] = audioread('M3.wav');

t=0:1/Fs:(length(M1)-1)/Fs;  

subplot(3,1,1);
plot(t,M1);
legend("M1");
xlabel("time(second)");

subplot(3,1,2);
plot(t,M2);
legend("M2");
xlabel("time(second)");

subplot(3,1,3);
plot(t,M3);
legend("M3");
xlabel("time(second)");

N1_power=bandpower(M1,Fs,[4.2 5.8]);
disp("Noise power in M1:");
disp(N1_power);

N2_power=bandpower(M2,Fs,[4.2 5.8]);
disp("Noise power in M2:");
disp(N2_power);

N3_power=bandpower(M3,Fs,[4.2 5.8]);
disp("Noise power in M3:");
disp(N3_power);
