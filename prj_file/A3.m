fileID = fopen('Filter_h[n].txt');
d=fgets(fileID);
data=fscanf(fileID, '%f', [1 inf]);
data = data';
fclose(fileID);


%[FT_data,w]=freqz(data,1000);
FT_data=fft(data,1000);
FT_data_phase=phasez(FT_data);
FT_data_abs=abs(FT_data);

subplot(3,1,1);
stem(data);
legend("h[n]");

w1=0:((2*pi)/length(FT_data_phase)):(2*pi-((2*pi)/length(FT_data_phase))); 
w2=0:((2*pi)/length(FT_data_abs)):(2*pi-((2*pi)/length(FT_data_abs)));  

subplot(3,1,2);
plot(w2,FT_data_abs);
%plot(w2,20.*log(FT_data_abs));
%ylabel("db");
legend("frequency response Magnitude");
xlabel("radian/sample");


subplot(3,1,3);
plot(w1,FT_data_phase);
legend("frequency response phase");
xlabel("radian/sample");


