function B = Fract(A,N,val)
    if N==2
        B=A;
    else
        k=int64(N/2);
        B(1:k,1:k)=A(1:k,1:k)+val*(rand(1)-1);
        B(1:k,1:k)=Fract(B(1:k,1:k),k,val/2);
        
        B(1:k,k+1:N)=A(1:k,k+1:N)+val*(rand(1)-1);
        B(1:k,k+1:N)=Fract(B(1:k,1:k),k,val/2);
        
        B(k+1:N,1:k)=A(k+1:N,1:k)+val*(rand(1)-1);
        B(k+1:N,1:k)=Fract(B(k+1:N,1:k),k,val/2);
        
        B(k+1:N,k+1:N)=A(k+1:N,k+1:N)+val*(rand(1)-1);
        B(k+1:N,k+1:N)=Fract(B(k+1:N,k+1:N),k,val/2);
    end
end