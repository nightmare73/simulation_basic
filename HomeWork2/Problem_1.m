clear;

% x값 -2~4까지의 균일하게 200개의 점
x = linspace(-2, 4, 200);

% 배열의 인덱스 초기화
k = 1;

% 임의의 200개 배열
y = 1 : 200;

% x범위에 맞는 y값 설정
while k <= 200
    if(x(k) <= 0)
        y(k) = (x(k) - 1) ^ 2;
    elseif 0 < x(k) && x(k) <= 1
        y(k) = -2 * (x(k) - 0.5) ^ 2 + 1.5;
    else
        y(k) = -x(k) + 2;
    end
    
    k = k + 1;
end

plot(x, y, '-or')
xlabel('x축')
ylabel('y축')
