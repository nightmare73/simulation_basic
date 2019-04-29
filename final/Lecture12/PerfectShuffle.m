function y=PerfectShuffle(x)
n=length(x);
m=n/2;
y=zeros(n,1);
for k=1:m
    y(2*k-1)= x(k);
    y(2*k)=x(k+m);
end
