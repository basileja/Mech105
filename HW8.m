clc
clear
%% Problem 1
%specify the function and plot it before adding in the taylor series
%estimate
x=-10:.1:10;
y=25*x.^3-6*x.^2+7*x-88;
plot(x,y)
grid on
%add in the taylor series estimate and plot against the original
N=3;
ytay=0*y;
error=0;
for n=0:N
    ytay=ytay+(x.^n)./factorial(n);
end
hold on
plot(x,ytay,'r')
legend('Actual Function','Taylor Series')
error=(y-ytay)/y;
disp(error)

%% Problem 2
x2=1:.25:2; %setting the intervals to .25
d1=diff(y,2);%taking the first derivative at 2
d2=diff(y,3);
approx=0;
for x2=1:2 %on this interval subtract the first derivative from the first
    approx=d1-d1;
end
disp(approx)

