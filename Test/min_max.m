function min_max(A)
    n=length(A);
    max=A(1);
    min=A(1);
    for i=2:n
        if A(i)>max
            max=A(i);
        end
        if A(i)<min
            min=A(i);
        end
    end
fprintf('Max: %d\nMin: %d\n',max,min);
end

