clc;
clear;
Vce=linspace(0,10,100);
Ib_values=[10e-6,20e-6,30e-6,40e-6,50e-6];
Beta=100;
figure(1);
title('BJT Output Characteristics');
xlabel('Vce (V)');
ylabel('Ic (mA)');
xgrid()
for i=1:length(Ib_values)
    Ib=Ib_values(i);
    Ic=Beta*Ib*(1-exp(-Vce/0.025));
    plot(Vce,Ic*1000,'Linewidth',2,'DisplayName','Ib='+string(Ib*1e6)+'uA');
end
legend('Location','northwest');
xgrid();
figure(2);
title('BJT Transfer Characteristics');
xlabel('Ib (uA)');
ylabel('Ic (mA)');
xgrid()
Ib=linspace(0,50e-6,100);
Ic=Beta*Ib*(1-exp(-5/0.025));
plot(Ib*1e6,Ic*1000,'b-','Linewidth',2);
legend('Vce=5V');
xgrid();
