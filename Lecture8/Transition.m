function y = Transition(P, x)
% P = �̵� Ȯ���� ��Ÿ���� ���
% x = ���� �α� (n�� 1��)
% y = ���� �α� (n�� 1��)

n = size(P,1); % �� ��� n = 4 (�� 4��)
y = zeros(n, 1);

for i = 1: n
    for j = 1: n
        y(i) = y(i) + P(i ,j) * x(i);
    end
end

end