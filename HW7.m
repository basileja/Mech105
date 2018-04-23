% Code to calculate Epsilon(E)
E=1; %creating variable
if 1+E<=1
    E=2*E; %E doubles when less than or equal to 1
    disp(E) 
elseif 1+E>1
    E=E/2;
    disp(E)
else %makes the code idiot-proof
    disp('error')
end