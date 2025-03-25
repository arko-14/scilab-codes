clc;
t = 0:0.001:0.1;
f = 50;
V_in = 10*sin(2*%pi*f*t);
amplitude = 10;

V_out = V_in;
V_out(V_out<0) = 0;

ac_input = amplitude*sin(2*%pi*f*t)
half_wave_output = max(ac_input,0)
clf;
subplot(2,1,1)
plot(t,V_in)
title("AC Input Voltage")
xlabel("Time(s)")
ylabel("Voltage(V)")

subplot(2,1,2)
plot(t,V_out,"r")
xlabel("Time(s)")
ylabel("Voltage(V)")

V_dc_avg = mean(half_wave_output)
disp("Average DC Output voltage:-"+string(V_dc_avg)+"V")

V_ac_rms = sqrt(mean(V_in*2))
disp("RMS Value of AC Input Voltage:-"+string(V_ac_rms)+"V")

efficiency = (V_dc_avg/V_ac_rms)*100
disp("Efficiency of the Half-wave rectifier:-"+string(efficiency)+"V")


