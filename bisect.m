function [root,fx,ea,iter]=falseposition(func,xl,xu,es,maxit,varargin)
if nargin<3, error('need 3 inputs'), end
test = func(x1,varargin{:}) * func(xu,varargin{:});
if test>0, error('no sign change'),end
if nargin<4|isempty(es), es = .0001;end
if nargin<5|isempty(maxit), maxit=50;end
iter=0; xr=xl; ea=100;
while(1)
    xrold=xr;
    xr1=double(func(xu)*(xl-xu);
    xr2=double(func(xl))-double(func(xu));
    xr=xu-(xr1/xr2);
    iter=iter+1;
    if xr~=0,ea=abs((xr-xrold/xr)*100;end
    test = func(x1,varargin{:}) * func(xr,varargin{:});
    if test<0
        xu=xr;
    elseif test>0
        xl=xr;
    else
        ea=0;
    end
    if ea<=es|iter>=maxit,break,end
end
root=xr; fx=func(xr,varargin{:});