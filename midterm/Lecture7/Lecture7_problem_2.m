close all; % �׸�â �Ѳ����� �� �ݴ� ��ɾ

x = linspace(-2, 3, 199);

y = sin(5 * x) .* exp(-1 * x / 2) ./ (1 + x .* x);

plot(x, y, '.k')