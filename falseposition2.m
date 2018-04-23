function [root,fx,ea,iter] = falseposition2(func,xl,xu,es,maxiter) 
%Inputs
%func = a function of the users choice. Must be input in format @(x) f(x)
%xl = lower guess
%xu = upper guess
%es = desired error
%maxiter = desired number of iterations
P=3;
K=.05;
ea = 100;
root = 0;
%checks number of input arguments
if nargin < 3 
    error('3 arguments required') %if user does not put at least 3 arguments, error
elseif nargin == 3
    es = 0.0001; %sets es to 0.0001 if userr does not set it
    maxiter = 200; %sets maxiter to 200 if user does not set it
else nargin == 4
    maxiter = 200; 
end


signchange = func(xl) * func(xu);
if signchange > 0
    error('no sign change found') % if no sign change is found display error
end 

%xr formula calculates the rootand ea formula calculates error
while ea > es 
    ea = ((xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu))))-root)/(xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu))));
    root = xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu)));
if (func(root) * func(xu)) > 0 
    xu = root; %if upper bound has same sign as f(root), replace upper bound with the root
elseif func(root) * func(xl) > 0
    xl = root; %if the lower bound has same sign as f(root), replace lower bound with root
end

end
fx = func(root); %equal to f(x) at the root