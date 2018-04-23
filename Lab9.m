%%
% Let's Get While'd
i=5500;
t=0;
while i<=1000000;
    i=i*(1.06)+5500;
    t=t+1;
end
fprintf('%d/n',i);

%%
%part two, 10,000 initial
m=10000;
T=0;
while m<=1000000;
    m=m*(1.01)+5000;
    T=T+1;
end
fprintf('%d/n',m);
%%
%Nested for Loops
%b=initial bacteria
%t=time
%GRate=growth rate
for b=1:10;
    for GRate= 1:10;
    B(b,GRate)=(b*100)*exp(10*(GRate*0.02));
    B=round(B);
end
end
Bdiff=B(10,10)-B(10,1);
Bsum=sum(B(:,2));
%%
%While Loop, nest or not. You be the judge?
clc
d6=1;

numroll=0;
while d6<6;
    d6=randi(6,1);
    numroll=numroll+1;
end
numroll=numroll;
%%
%What is the sum of the five rolls?
clc

numroll=0;
for df=1:5;
    df=randi(6,1);
    numroll=numroll+d6;
end
%%
%Combining Loops
d6=0;
numroll=0;
days=1;
while numroll~=30;
    numroll=0;
    for d6=(1:5);
        numroll=numroll+randi(6);
        d6=d6+1;
    end
    days=days+1;
end
disp(numroll);
disp(days);
%%
%Excel Data
h=F57'
x=0;
for k=1:length(1);
    c=h(k);
    if c>x;
        x=c;
    end
end
disp(x);
%%
%Excel Data
l= O61'
z=0;
for k=1:length(j);
    c=j(k);
    if c>z;
        z=c;
    end
end
disp(z);
%%
%Excel Data
j= X92'
y=0;
for k=1:length(j);
    ifc>y;
    y=c;
end
disp(y);