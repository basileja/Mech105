x=linspace(0,0.8);
q0=10;
R=60;
L=9;
C=0.00005;
y=q0*exp(-R*x/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L))^2*x));
plot(x,y);
title 'Charge of a Capacitor vs Time'
xlabel 'Time(s)'
ylabel 'Charge of Capacitor(C)'

C2=C*10;
y2=q0*exp(-R*x/(2*L)).*cos(sqrt((1/(L*C2))-(R/(2*L))^2*x));

subplot(1,2,1)
plot(x,y)
subplot(1,2,2)
plot(x,y2)