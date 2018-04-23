function[L,U,P]=luFactor(A)
%is made to calculate the LU Factorization of the input matrix
%Input:
%A=square matrix
%Outputs:
%L=Lower triangle matrix
%U=Upper triangle matrix
%P=Pivot matrix
%Makes it so that one, and only one input is necessary
if nargin<1
    error('Need one input')
elseif nargin>1
    error('Only need one input')
end
[n,n]=size(A);%verifies matrix size
L=i(n);%identity matrix
P=L;
U=A;
for k=1:n
    [pivot m]=max(abs(U(k:n,k)));%highest magnitude is moved to the top
    m=m+k-1;
    if m~=k%switches rows m and k
        T=U(k,:);%creates temporary variable T
        U(k,:)=U(m,:);
        U(m,:)=T;
        T=P(k,:);
        P(k,:)=P(m,:);
        P(m,:)=T;
        if k>=2
            T=L(k,1:k-1);
            L(k,1:k-1)=L(m,1:k-1);
            L(m,1:k-1)=T;
        end
    end
    for j=k+1:n %allows output to be printed
        L(j,k)=U(j,k)/U(k,k);
        U(j,:)=U(j,:)-L(j,k)*U(k,:);
    end
end
disp(L)
disp(U)
disp(P)
end