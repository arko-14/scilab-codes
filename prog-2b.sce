clc;
clear;
clf;

Vm=10;
f=50;
T=1/f;
t = 0:0.001:2*T;
V_in =Vm*sin(2*%pi*f*t);
V_out = abs(V_in);



subplot(2,1,1)
plot(t,V_in,'b')
title("AC Input Voltage")
xlabel("Time(s)")
ylabel("Voltage(V)")
xgrid()


subplot(2,1,2)
plot(t,V_out,"r")
xlabel("Time(s)")
ylabel("Voltage(V)")
xgrid()

V_dc_avg = mean(V_out)
disp("Average DC Output voltage:-"+string(V_dc_avg)+"V")

V_ac_rms = sqrt(mean(V_out.^2))
disp("RMS Value of AC Input Voltage:-"+string(V_ac_rms)+"V")

efficiency = (V_dc_avg/V_ac_rms)*100
disp("Efficiency of the Full-wave rectifier:-"+string(efficiency)+"%")
