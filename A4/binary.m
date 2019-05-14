%This function searches for interval in which the given point lies using Binary Search Algorithm
function i = binary(x)
A = importdata('points.txt');
X=A(:,1);
a=0;
b=length(X);
while b>a+1
    mid=int64((a+b)/2);
    if X(mid)<x && X(mid+1)>x
        i=mid;
        break;
    elseif X(mid)>x
        b=mid;
    else
        a=mid;
    end
    i=a;
    %fprintf('%d %d\n',a,b);
end

