close all; % 그림창 한꺼번에 다 닫는 명령어래

x = linspace(-2, 3, 199);

y = sin(5 * x) .* exp(-1 * x / 2) ./ (1 + x .* x);

plot(x, y, '.k')