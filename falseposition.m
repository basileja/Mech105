%A function which finds roots through the false position method
function [root,fx,ea,iter]=falseposition(func,xl,xu,es,maxiter);
%Inputs:
%func=function which root is to be found on
%xl=lower bound
%xu=upper bound
%es=desired approx relative error(lets you know when to end the
%falseposition)
%Outputs:
%root=estimated root
%fx=evaluated func
%ea=approx relative error
%iter=number of iterations used
if nargin<3, error('need 3 inputs'), end %lets the user know that there must be at least 3 inputs
if nargin<4||isempty(es), es = .0001;end %default error is .0001
if nargin<5||isempty(maxiter), maxiter=200;end %default iterations is 200
iter=0;
xr=xl; 
ea=100;
while(1)
    xrold=xr;
    xr1=double(func(xu)*(xl-xu)); %numerator of false position equation
    xr2=double(func(xl))-double(func(xu)); %denominator of false position equation
    xr=xu-(xr1/xr2);%false position equation 
    iter=iter+1;
    if xr~=0,ea=abs((xr-xrold/xr)*100);end %calaculates current error
    test = func(x1) * func(xr);
    if test<0 %decides the next bounds
        xu=xr;
    elseif test>0
        xl=xr;
    else
        ea=0;
    end
    if ea<=es|iter>=maxiter,break,end %ends the function if the desired error or iterations is reached
end
root=xr; fx=func(xr); %displays the root and value of the func at that root
end