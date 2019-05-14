a=0;
b=1;
fprintf('%d ',a);
while b<2000
    temp=a;
    a=b;
    b=b+temp;
    fprintf('%d ',a)
end
fprintf('\n');