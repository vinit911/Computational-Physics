function res = Newton(x)
%A = [1,8;2.1,20.6;5,13.7];
%X=A(:,1);
%Y=A(:,2);
X=1:0.1:1.4;
Y=[0.54030 0.48360 0.30236 0.22150 0.18497];
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
for i=1:n-1
    f=1;
    for j=1:i
        f=f*(x-X(j));
    end
    res=res+f*diff(1,i+1);
    %fprintf('%d %d %d\n',res,f,diff(i+1,1));
end
end