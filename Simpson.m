function I=Simpson(x,y)
%The Simpson function evaluates the integral of the vector of function
%values ‘y’ with respect to ‘x’ using the Simpson's 1/3 Rule and the
%Trapezoidal Rule if necessary
%I=integrated function
%x,y is where the integral is evaluated at and they are input as matrices
if nargin<2, error('Need 2 input arguments'),end %input constraints
if nargin>2, error('Only 2 input arguments are needed'),end
if size(x,1) ~= size(y,1), error ('Data in x and y must be equal'),end%for matrices
dx=diff(x);%determines spacing
if all(dx ~= dx(1)), error('x is not equally spaced'),end
n=length (x)-1; %calculating the amount of intervals
if mod(n,2) == 1, warning('Trapezoidal rule will be used for last interval')%if the amount of intervals isn't odd checked by division with mod function
    Trapx=x(end-1:end);
    Trapy=y(end-1:end);
    Trap=(Trapx(end)-Trapx(end-1))*((Trapy(end-1)-Trapy(end)))/2;%uses the trapezoid rule(b-a)((f(x0)+2sum*f(xi)+f(xn))/2n)
    Trapn=length(x)-2;
    Simp=(Trapx(1)-x(1))*(y(1)+4*sum(y(3:2:n))+2*sum(y(2:2:n))+Trapy(1))/(2*Trapn);
    I=Simp+Trap
else
    %no trapezoidal rule
    %if beginning intervals are equally spaced so that it's odd intervals
    [b]=size(x,1);
    Simp=(x(b)-x(1))*(y(1)+4*sum(y(3:2:end-1))+2*sum(y(2:2:end-1))+y(end))/(2*n);
    I=Simp
end