%Question 1
Question1=4*(pi)^2;%Question 1a
A=[1 2 3];
B=[4 5 6];
C=[7 8 9];
Question2=sum(A)*sum(B)*sum(C);%Question1b answer
Question3=mean(2.1*[5;17;18]+exp(1);sqrt(5);1.27^2.2])%Question 1c answer
A1=[1 0 1 0;0 0 1 0;1 1 0 1;0 1 0 0];
B2=[A1 A1 A1 A1 A1 A1];
C3=[A1;A1;A1;A1;A1;A1];
D2=C3*B2;
n=nnz(D2);%Question 1d answer
%Question 2
array=randi(5,[1,100]); %creates an array of random numbers
arrayaverage=mean(array);%finds the average of the random numbers
Question2=histogram(array,10);%creates a histogram
%Question 3
run1=xlsread('Accekeromtaghr.xlsx','F40:F75');%data from first jump
max_run1=max(run1);%the max of run 1
run2=xlsread('Accekeromtaghr.xlsx','F46:F87');%data from second jump
max_run2=max(run2);%the max of run 2
run3=xlsread('Accekeromtaghr.xlsx','F58:F111');%data from third jump
max_run3=max(run3);%the max of run 3