clc;
clear all;
Vs =200;
R = 5;
fs=2;
dv =100;
Itd = 100;
Rs = Vs/Itd;
Cs = (0.632*R*Vs)/((dv*10^6)*(R+Rs)^2);
Ps = 0.5*Cs*Vs^2*fs*10^3;
Psr = Ps;
printf("\n\t(a). The snubber resistance Rs is %0.0f", Rs);
printf("\n\t  The snubber capacitance Cs  is % 0.3f F",Cs*10^6);
printf("\n\t(b). The snubber loss Ps is %0.1fW",Ps);
printf("\n\t(d). The power rating of snubber resistor is  %0.1fW",Psr);
