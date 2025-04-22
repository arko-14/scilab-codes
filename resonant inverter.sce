clc;
clear all;
PL = 1;
R =10;
fo = 20;
P1 = 250;
u =0.8;
Vp1 = round(sqrt(PL*10^3*2*R));
Vs = floor((Vp1*%pi)/4);
Qs = sqrt((((PL*10^3)/P1)-1)/(((u)-(1/u))^2));
L = (Qs*R)/(2*%pi*fo*10^3);
C = ((1/(fo*10^3*2*%pi))^2)*(1/L);
printf("\n\t(a). The input supply current Vs is %iV",Vs);
printf("\n\t(b). The Quality factor if the power is to be reduced to 250w,Qs is % 0.2f",Qs);
printf("\n\t(c). The inductor L is %0.1f H",L*10^6);
printf("\n\t(d). The capacitor C  is %0.4f F",C*10^6);

