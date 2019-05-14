clc;
clear;
n=1e6;
r1=rand(1,n);
r2=rand(1,n);
r=sin(2*pi*r2).*(-2*log(r1)).^0.5;


d=0.1; %bin size
k=100; % Number of bins

bin=zeros(1,k+1);

for j=1:n
    for i=1:k+1
        if r(j)>(i-k/2)*d && r(j)<(i-k/2+1)*d
            bin(i)=bin(i)+1;
        end
    end
end

hold on
scatter(-d*k/2:d:d*k/2, bin)

%Genrating Histogram without using histogram function
bin2=zeros(1,10*k+1);
for i=1:10*k+1
    bin2(i)=bin(int8(i/10)+1);
end
plot (-d*k/2:d/10:d*k/2,bin2,'r')