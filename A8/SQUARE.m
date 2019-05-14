clear
clc
N=2^10;
A=ones(N);
A=Fract(A,N,1);
imagesc(A)