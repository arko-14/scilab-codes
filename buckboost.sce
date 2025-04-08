clc;
clear all;
Vs = 12;
k=0.25;
f = 25;
L = 150;
C = 220;
Ia = 1.25;
Va = (-Vs*k)/(1-k);
del_Vc =(Ia*k)/(f*10^3*C*10^-6);
del_I = (Vs*k)/(25*10^3*L*10^-6);
Is = (Ia*k)/(1-k);
Ip = (Is/k) + (del_I/2);
R=Va/Ia;
Lc =((1-k)*k*R)/(2*f*10^-3);
Cc =((k)/(2*f*10^3*R));
disp("the average output volatge Va is"+string(Va) + " Volts");
disp("the pak to peak output ripple voltage del Vc is"+string(del_Vc) + "mVolts");
disp("the peak to peak ripple ripple current of inductor Del is"+string(del_I) + "Amps");
disp("the input current is"+string(Is) + "Amps");
disp("the peak current of transistor Ip is"+string(Ip) + "Amps");
disp("the resistance R is"+string(R) + "Ohms");
disp("the critical value of inductance Lc is"+string(Lc) + "microH");
disp("the critical value of capacitance Cc is"+string(Cc)+"microF");
