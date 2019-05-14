function result = Epsilon()
clear all;
e=double(1);
while (1+e)~=1 
    e=e/2;
end
result=e*2;
end
