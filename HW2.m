%% Question1
x=linspace(0,0.8);
q0=10;
R=60;
L=9;
C=0.00005;
y=q0*exp(-R*x/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L))^2*x));


C2=C*10;
y2=q0*exp(-R*x/(2*L)).*cos(sqrt((1/(L*C2))-(R/(2*L))^2*x));

subplot(2,2,1)
plot(x,y)
title 'Charge of a Capacitor vs Time'
xlabel 'Time(s)'
ylabel 'Charge of Capacitor(C)'
subplot(2,2,2)
plot(x,y2)
title 'Charge of a Capacitor vs Time'
xlabel 'Time(s)'
ylabel 'Charge of Capacitor(C)'
%The new Charge is slightly greater due to C being on the denominator of a
%fraction within the trig function cosine.
%% Question2
t=linspace(0,70,7);
d=4.84*exp(0.034*t);
subplot(2,2,3)
plot(t,d,'dr')
xlabel 'Time(min)'
ylabel 'Concentration(ppm)'
legend ('show', 'red data')
subplot(2,2,4)
plot(t,d,'-.g')
xlabel 'Time(min)'
ylabel 'Concentration(ppm)'
legend ('show','green data')

