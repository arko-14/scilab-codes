clc;
clear all;
Vs = 5;
Va = 15;
Ia = 0.5;
f = 25;
L = 150;
C = 220;
k = 1 - (Vs/Va);
%k =k*100;
del_I = (Vs*(Va-Vs))/(f*10^-6*Va);
Is = (Ia/(1-k));
I2 = Is + (del_I/2);
del_Vc =(Ia*k)/(f*10^3*C*10^-6);
R=Va/Ia;
Lc =((1-k)*k*R)/(2*f*10^-3)
Cc =k/(2*f*10^3*R);

disp("the duty cycleK is"+string(%k) + "%");
disp("the ripple current of inductor is"+string(del_I) + "%");
disp("the peak current of inductor is"+string(I2) + "Amps");
disp("the ripple voltage of filter capacitor is"+string(del_Vc) + "mV");
disp("the critical value of inductor Lc is"+string(Lc) + "microH");
disp("the critical value of capacitor Cc is"+string(Cc) + "microF");
