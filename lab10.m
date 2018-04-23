%%Question 1
% X max acceleration
h=X';
Max_x=0;
for k=1:length(h);
    c=h(k);
    if c>Max_x;
        Max_x=c;
    end
end
disp(Max_x);
% X min acceleration
h=X';
Min_x=0;
for K=1:length(h);
    c=h(K);
    if c<Min_x;
        Min_x=c;
    end
end
disp(Min_x)
%Y max acceleration
i=Y';
Max_y=0;
for m=1:length(i);
    c=i(m);
    if c>Max_y;
        Max_y=c;
    end
end
disp(Max_y)
% Y min acceleration
i=Y';
Min_y=0;
for M=1:length(i);
    c=i(M);
    if c<Min_y;
        Min_y=c;
    end
end
disp(Min_y)
%Z max acceleration
j=Z';
Max_z=0;
for n=1:length(j);
    c=i(n);
    if c>Max_z;
        Max_z=c;
    end
end
disp(Max_z)
% Z min acceleration
I=Z';
Min_z=0;
for N=1:length(I);
    c=I(N);
    if c<Min_z;
        Min_z=c;
    end
end
disp(Min_z)
%Resultant max acceleration
g=Resultant';
Max_r=0;
for p=1:length(g);
    c=g(p);
    if c>Max_r;
        Max_r=c;
    end
end
disp(Max_r)
%Resultant min acceleration
G=Resultant';
Min_r=0;
for P=1:length(G);
    c=G(P);
    if c<Min_r;
        Min_r=c;
    end
end
disp(Min_r)

