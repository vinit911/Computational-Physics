function [y,z] = COD(f,g,a,b,y0,z0,varargin)

if nargin==7
  N=varargin{1};
  w=1;
elseif nargin==8
  N=varargin{1};
  w=varargin{2};
else
  error('Kn accepts up to 2 input arguments!')
end

h=(b-a)/N;

x=a:h:b-h;
z=zeros(N,w);
y=zeros(N,w);
z(1,:)=z0;
y(1,:)=y0;

for i=1:N-1
    s1=f(x(i),y(i,:),z(i,:));
    p1=g(x(i),y(i,:),z(i,:));
    s2=f(x(i)+h,y(i,:)+h*s1,z(i,:)+h*p1);
    p2=g(x(i)+h,y(i,:)+h*s1,z(i,:)+h*p1);
    y(i+1,:)=y(i,:)+h*(s1+s2)/2;
    z(i+1,:)=z(i,:)+h*(p1+p2)/2;
end
end

