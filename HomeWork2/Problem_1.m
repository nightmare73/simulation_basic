clear;

% x�� -2~4������ �����ϰ� 200���� ��
x = linspace(-2, 4, 200);

% �迭�� �ε��� �ʱ�ȭ
k = 1;

% ������ 200�� �迭
y = 1 : 200;

% x������ �´� y�� ����
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
xlabel('x��')
ylabel('y��')
