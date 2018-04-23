h = input('Enter float height:');
V=0;
r=12.5;
A=pi*(12.5)^2;
A2=pi*(r)^2;
if h<=19 && h>=0
    V=A*h;
    disp(V);
elseif h>19 && h<=33
    r=12.5+(.75*(h-19));
    V=A*14+((h-19)/3)*(A+A2+sqrt(A*A2));
else
    disp('error')
    end