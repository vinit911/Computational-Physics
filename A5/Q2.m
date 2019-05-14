X=[1 1;2 .4444;3 .2632;4 .1818;5 .1373;6 .1096;7 .0929;8 .0775;9 .0675;10 .0597];
x=1:.05:10;
y=zeros(1,length(x));

%part 1 with order 9
n=10;
for i=1:length(x)
y(i)=newtonfor(X,x(i),n);
end
plot(x,y,'-');
hold on
plot(X(:,1),X(:,2),'r*')

%%part 2 with order 5
n=5;
for i=1:length(x)
y(i)=newtonfor(X,x(i),n);
end
figure;
plot(x,y,'-');
hold on
plot(X(:,1),X(:,2),'r*')

f1=newtonfor(X,2.22,10);
f2=newtonfor(X,5.7,10);
f3=newtonfor(X,8.11,10);