%Function that checks whether a matrix is Diagonally Dominant. 
function [] = Diag_mat(A)
%A =[-6 2 1 2 1;3 8 -4 1 0;-1 1 4 10 1;3 -4 1 9 2;2 0 1 3 10];
%B=[18 3 6 -3;9 13 -5 2;-3 -2 4 9;6 0 11 3];
disp(A);
for i=1:size(A,1)
if abs(2*A(i,i))<sum(abs(A(i,:)))
fprintf('Not Diagonally dominant at row%d\n',i);
end
end
end