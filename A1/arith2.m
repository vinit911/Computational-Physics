x=(5^0.5-1)/2;
p=zeros(1,50);
p(1)=1;
p(2)=x;
for i=3:50
    p(i)=p(i-2)-p(i-1);
end
plot(log(abs(p-x.^(0:49))));