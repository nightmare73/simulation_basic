function y=Transition(P,x)
% P: 이동 확률을 나타내는 행렬 (n행 n열)
% x: 현재 인구 (n행 1열)
% y: 다음 인구 (n행 1여)
n=size(P,1);
y=zeros(n,1);
for i=1:n
    for j=1:n
    y(i)=y(i)+P(i,j)*x(j);
    end
end