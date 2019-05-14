function res = Newton2(x,order)
%A = [1,8;2.1,20.6;5,13.7];
A=[1 1;2 .4444;3 .2632;4 .1818;5 .1373;6 .1096;7 .0929;8 .0775;9 .0675;10 .0597];
X=A(:,1);
Y=A(:,2);

n=length(X);
diff=zeros(n,n);
diff(:,1)=Y;
for i=2:n
    for j=1:n-(i-1)
        diff(j,i)=(diff(j+1,i-1)-diff(j,i-1))/(X(j+i-1)-X(j));
    end
end
disp(diff);
res=diff(1,1);

for i=1:order
    f=1;
    for j=1:i
        f=f*(x-X(j));
    end
    res=res+f*diff(1,i+1);
    %fprintf('%d %d %d\n',res,f,diff(i+1,1));
end
end