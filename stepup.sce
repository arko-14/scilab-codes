clc;
clear all;
Vs  = 10;
f = 1;
R= 5;
L = 6.5;
E = 0;
k = 0.5;
T = 1/ ( f*10^3);
z = (T*R)/(L*10^-3);
I1 = (((Vs*k*z)/R) * ((exp((-1+k)*z))/(1-(exp((-1+k)*z)))))+((Vs-E)/R);

I2 = (((Vs*k*z)/R) * ((1)/(1-(exp((-1+k)*z)))))+((Vs-E)/R);

del_I = I2 - I1;

disp("the current I1 is"+string(I1)+"Amps");
disp("the current I2 is"+string(I2)+"Amps");
disp("the current I1 is"+string(del_I)+"Amps");

