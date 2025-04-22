clc;
clear all;
PL = 1;
Vp = 170;
R =10;
fo = 20;
u =1.25;
Is = sqrt((PL*10^3*2*%pi^2)/(4^2*R));
Vs = floor((Vp1*%pi)/4);
Qp = sqrt((4-1)/(u-(1/u))^2);
C = Qp/(2*%pi*fo*10^3*R);
L = ((1/(fo*10^3*2*%pi))^2)*(1/C);
printf("\n\t(a). The DC supply current Is is %0.1fA",Is);
printf("\n\t(b). The Quality factor if the power is to be reduced to 250w,Qp is % 0.2f",Qp);
printf("\n\t(c). The capacitance C is %0.2f F",C*10^6);
printf("\n\t(d). The inductance  L  is %0.4f H",L*10^6);

