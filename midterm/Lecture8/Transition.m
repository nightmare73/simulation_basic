function y = Transition(P, x)
% P = 이동 확률을 나타내는 행렬
% x = 현재 인구 (n행 1열)
% y = 다음 인구 (n행 1열)

n = size(P,1); % 이 경우 n = 4 (섬 4개)
y = zeros(n, 1);

for i = 1: n
    for j = 1: n
        y(i) = y(i) + P(i ,j) * x(i);
    end
end

end