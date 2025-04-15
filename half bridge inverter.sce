clc;
clear;
Vs = 48;
R = 2.4
k = 0.5
Vo1 = 0.45*Vs;
Vo = Vs/2;
Po = Vo ^ 2/R;
Ip = Vo/R;
Iq = k*Ip;
Vbr = 2*Vo;
Is = Po/Vs;
Vh = 0.2176*Vs;
THD = Vh/Vo1;
Von = 0.024*Vs;
DF = Von/Vo1;
LOH = Vo1/3;
Vo3 = LOH;
HF3 = Vo3/Vo1;
DF3 = (Vo3/3^2)/Vo1;
disp("\n\t(a).The rms output voltage vOL IS %0.1 fV",Vo1);
disp("\n\t(b).The output voltage Vo is %iV",Vo);
disp("\n\t The output power Po is  %iW",Po);
disp("\n\t(c).The peak transistor current  Ip is %iA",Iq);
disp("\n\t(d).The peak reverse blocking voltage Vbr is %iV",Vbr);
disp("\n\t(e).The average supply current Is is %iA",Is);
disp("\n\t(f).The rms harmonic voltage Vh is %0.4fV",Vh);
disp("\n\t The total harmonic distortion factor THD is %0.2f percent",THD*100);
disp("\n\t(g).Theinstantaneous output voltage Von IS %0.2f",Von);
disp("\n\t The distortion factor DF Is %0.2f percent",DF*100);
disp("\n\t(h).The least order harmonic LOH is  %0.2fV",LOH);
disp("\n\t The harmonic factor HF3 is %0.2f percent",HF3*100);
disp("\n\t The distortion factor DF3 is %0.2f percent",   DF3*100);


