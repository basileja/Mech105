function [A]=specialMatrix(n,m)
%specialMatrix function will produce a matrix where the first row and
%column values are the same as the value of the element. Other values will
%be the sum of the left + above terms.
A=[];
if nargin ~=2
    error('two input arguments required')
end
for r=1:n %number of rows
    for c=1:m %number of columns
        if r==1
            A(r,c)=c;
        elseif c==1
            A(r,c)=r;
        else A(r,c)=A(r-1,c)+A(r,c-1)
        end
    end
end
end