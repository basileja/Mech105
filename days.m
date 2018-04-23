%This code will calculate the days elapsed in the year when a certain date
%is input and it accounts for the varying amount of days in different
%months as well as leap years.
function nd = days(mo, da, leap)% defining the function
nd=0;
mo=1:12;
for mo=1:12 %for months 1-12
switch m %switch between amount of days depending on the month
case {1, 3, 5, 7, 8, 10, 12}%31 day months
nday=31;
case {4, 6, 9, 11}%30 days months
nday=30;
case 2
nday=28+leap;%february
end
nd=nd+nday;%add number of days to func
end
nd=nd+da;%total days elapsed