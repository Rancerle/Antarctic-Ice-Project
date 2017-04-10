%calculus II project
%Reilly Curran curranrq@clarkson.edu, Talor Weller wellertl@clarkson.edu
%This program will take the provided data and perform an analysis based on
%the historical surface area of the antartic ice, the current measured
%surface area, as well as the measured absorbance
%% Month caller
%calls and assigns the data assosciated with the historical surface area of
%the ice to its proper month
jan15h = xlsread('area_database.xlsx', 'C2:C19')';
feb15h = xlsread('area_database.xlsx', 'C41:C61')';
mar15h = xlsread('area_database.xlsx', 'C76:C95')';
apr15h = xlsread('area_database.xlsx', 'C120:C140')';
may15h = xlsread('area_database.xlsx', 'C155:C173')';
jun15h = xlsread('area_database.xlsx', 'C192:C207')';
jul15h = xlsread('area_database.xlsx', 'C225:C242')';
aug15h = xlsread('area_database.xlsx', 'C266:C278')';
sep15h = xlsread('area_database.xlsx', 'C301:C319')';
oct15h = xlsread('area_database.xlsx', 'C337:C354')';
nov15h = xlsread('area_database.xlsx', 'C373:C392')';
dec15h = xlsread('area_database.xlsx', 'C414:C427')';
jan16h = xlsread('area_database.xlsx', 'C2:C19')';
%creates an aray to be filled with the averaged historical values
Ah = ones(1,13);

%calls and assigns the data assosciated with the measured surface area of
%the ice to its proper month
jan15m = xlsread('area_database.xlsx', 'C20:C40')';
feb15m = xlsread('area_database.xlsx', 'C62:C75')';
mar15m = xlsread('area_database.xlsx', 'C96:C119')';
apr15m = xlsread('area_database.xlsx', 'C141:C154')';
may15m = xlsread('area_database.xlsx', 'C174:C191')';
jun15m = xlsread('area_database.xlsx', 'C208:C224')';
jul15m = xlsread('area_database.xlsx', 'C243:C265')';
aug15m = xlsread('area_database.xlsx', 'C279:C300')';
sep15m = xlsread('area_database.xlsx', 'C320:C336')';
oct15m = xlsread('area_database.xlsx', 'C355:C372')';
nov15m = xlsread('area_database.xlsx', 'C393:C413')';
dec15m = xlsread('area_database.xlsx', 'C428:C445')';
jan16m = xlsread('area_database.xlsx', 'C445:C461')';
%creates an array to be filled with the averaged measured values
Am = zeros(1,13);
%% January 2015------------------------------------------------------------
%***SPECIAL NOTE: Due to the repetitiveness of the next couple hundred
%lines of code only the first of the 26 comparing loops will be documented 
%as the only thing that changes in the next 13 segments is the month being
%analyzed.***

%sets the value the data will be checked against to a arbitrary number that
%is close to most of the data
valueh = 3500000;
valuem = 5000000;
%creates variables for the totals of all acceptable values for historical
%and measured surface area 
totalh = 0;
totalm = 0;
%sets counter variables that will rise with each iteration of the loops
i = 1;
divh = 0;
j = 1;
divm = 0;
%starts a loop with as many iterations as the vector it is analysing
while i <= length(jan15h)
    %compares the indexed value to a certain value that is similar to the
    %data that measures the surface area of the ice only, ignoring data
    %that has a significant difference with this value and adding
    %appropriate data to the total
    if abs(jan15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        %iterates the dividend when an appropriate value is found
        totalh = totalh + jan15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
%obtains the average by dividing the total of appropriate data points by
%the number of appropriate data points
Ah(1) = totalh/divh;  

while j < length(jan15m)
    if abs(jan15m(j)-valuem) > (1000000)
        j = j + 1;
    else
        totalm = totalm + jan15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(1) = totalm/divm;

%% February 2015-----------------------------------------------------------
valueh = 2000000;
valuem = 2000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(feb15h)
    if abs(feb15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + feb15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(2) = totalh/divh;   

while j < length(feb15m)
    if abs(feb15m(j)-valuem) > (1000000)
        j = j + 1;
    else
        totalm = totalm + feb15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(2) = totalm/divm;

%% March 2015--------------------------------------------------------------
valueh = 3000000;
valuem = 3500000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(mar15h)
    if abs(mar15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + mar15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(3) = totalh/divh;   

while j < length(mar15m)
    if abs(mar15m(j)-valuem) > (1000000)
        j = j + 1;
    else
        totalm = totalm + mar15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(3) = totalm/divm;

%% April 2015--------------------------------------------------------------
valueh = 5000000;
valuem = 6000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(apr15h)
    if abs(apr15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + apr15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(4) = totalh/divh;

while j < length(apr15m)
    if abs(apr15m(j)-valuem) > (1000000)
        j = j + 1;
    else
        totalm = totalm + apr15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(4) = totalm/divm;

%% May 2015----------------------------------------------------------------
valueh = 7500000;
valuem = 8000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(may15h)
    if abs(may15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + may15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(5) = totalh/divh;

while j < length(may15m)
    if abs(may15m(j)-valuem) > (2000000)
        j = j + 1;
    else
        totalm = totalm + may15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(5) = totalm/divm;

%% June 2015---------------------------------------------------------------
valueh = 10000000;
valuem = 10000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(jun15h)
    if abs(jun15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + jun15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(6) = totalh/divh;   

while j < length(jun15m)
    if abs(jun15m(j)-valuem) > (2000000)
        j = j + 1;
    else
        totalm = totalm + jun15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(6) = totalm/divm;

%% July 2015---------------------------------------------------------------
valueh = 12000000;
valuem = 12000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(jul15h)
    if abs(jul15h(i)-valueh) > (2000000)
        i = i + 1;
    else
        totalh = totalh + jul15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(7) = totalh/divh; 

while j < length(jul15m)
    if abs(jul15m(j)-valuem) > (2000000)
        j = j + 1;
    else
        totalm = totalm + jul15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(7) = totalm/divm;

%% August 2015-------------------------------------------------------------
valueh = 13000000;
valuem = 14000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(aug15h)
    if abs(aug15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + aug15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(8) = totalh/divh;

while j < length(aug15m)
    if abs(aug15m(j)-valuem) > (1000000)
        j = j + 1;
    else
        totalm = totalm + aug15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(8) = totalm/divm;

%% September 2015----------------------------------------------------------
valueh = 14000000;
valuem = 13000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(sep15h)
    if abs(sep15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + sep15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(9) = totalh/divh;   

while j < length(sep15m)
    if abs(sep15m(j)-valuem) > (1500000)
        j = j + 1;
    else
        totalm = totalm + sep15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(9) = totalm/divm;

%% October 2015------------------------------------------------------------
valueh = 13000000;
valuem = 13000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(oct15h)
    if abs(oct15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + oct15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(10) = totalh/divh;   

while j < length(oct15m)
    if abs(oct15m(j)-valuem) > (1500000)
        j = j + 1;
    else
        totalm = totalm + oct15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(10) = totalm/divm;

%% November 2015-----------------------------------------------------------
valueh = 11000000;
valuem = 11000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(nov15h)
    if abs(nov15h(i)-valueh) > (1500000)
        i = i + 1;
    else
        totalh = totalh + nov15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(11) = totalh/divh;   

while j < length(nov15m)
    if abs(nov15m(j)-valuem) > (1500000)
        j = j + 1;
    else
        totalm = totalm + nov15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(11) = totalm/divm;

%% December 2015-----------------------------------------------------------
valueh = 7500000;
valuem = 8000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(dec15h)
    if abs(dec15h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + dec15h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(12) = totalh/divh;   

while j < length(dec15m)
    if abs(dec15m(j)-valuem) > (1000000)
        j = j + 1;
    else
        totalm = totalm + dec15m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(12) = totalm/divm;

%% January 2016------------------------------------------------------------
valueh = 3500000;
valuem = 4000000;
totalh = 0;
totalm = 0;
i = 1;
divh = 0;
j = 1;
divm = 0;
while i < length(jan16h)
    if abs(jan16h(i)-valueh) > (1000000)
        i = i + 1;
    else
        totalh = totalh + jan16h(i);
        divh = divh + 1;
        i = i + 1;
    end
end
Ah(13) = totalh/divh;   

while j < length(jan16m)
    if abs(jan16m(j)-valuem) > (1000000)
        j = j + 1;
    else
        totalm = totalm + jan16m(j);
        divm = divm + 1;
        j = j + 1;
    end
end
Am(13) = totalm/divm;

%% Simpson's Rule Approximation--------------------------------------------
P = zeros(1,13);

store = xlsread('Calculus_Insolation_Data.xlsx', 'B3:B75')';

P(1) = store(1);
P(2) = store(7);
P(3) = store(13);
P(4) = store(19);
P(5) = store(25);
P(6) = store(31);
P(7) = store(37);
P(8) = store(43);
P(9) = store(49);
P(10) = store(55);
P(11) = store(61);
P(12) = store(66);
P(13) = store(73);

deltQ = zeros(1,13);

for i = (1:13)
   deltQ(i) = ((Am(i)-Ah(i)).*(0.7 - 0.06).* P(i));
    
end

sum = deltQ(1);

for i = (2:12)
   if mod(i,2) > 0
       sum = sum + 2.*deltQ(i);
   else
       sum = sum + 4.*deltQ(i);
   end
end

sum = sum + deltQ(13);

simpson = sum/3;
%% graph
figure(1)
surf(Am, P, 1:13)
hold on
surf(Am, P, 1:13);
title('time in months Vs. Surface area') 
xlabel('Month (starting from january 2015)')
ylabel('Area (Square Kilometers)')
legend('historical surface area', 'measured surface area', 'Location', 'northwest')
%saveas(h,'graph.jpg')