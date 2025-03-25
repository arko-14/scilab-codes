clc;
voltages = linspace(0,1,100);
Is = 1e-12;
nVt = 0.026;
currents  = Is*(exp(voltages/nVt)-1);
plot(voltages,currents)
xlabel("Voltage V ")
ylabel("Current(A)")
title("I-V characteristics of a power diode")
