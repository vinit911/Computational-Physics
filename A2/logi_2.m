%x=0.01:0.001:0.99;
x=0.5;
hold on;
for j=1:length(x)
A=0.5:0.01:3.99;
L=zeros(1,length(A));
for i=1:length(A)
    L(i)=logi_1(A(i),x(j),100);
end
plot(A,L,'k.','MarkerSize',4)
end
xlabel('A')
ylabel('X')
hold off;