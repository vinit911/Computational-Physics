function result = poly(c,x) %% taking inputs c & x from user
n = length(c);
p = c(n);
i = n;
for i = n:-1:2
p = c(i-1) + p*x;
i = i-1;
end
result = p; %% giving the output of the functional value p(x)
end