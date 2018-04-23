TF = 32:3.6:93.2;
TC = 5/9*(TF-32);
rho = 5.5289e-8*TC.^3-8.5016e-6*TC.^2+6.5622e-5*TC+0.99987;

plot(TC,rho)
title 'Temperature vs Density'
xlabel 'Temperature(C)'
ylabel 'Density(g/cm^3)'