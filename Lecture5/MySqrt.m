function y = MySqrt(x)
L = x; W = x / L;
n = 5;
for k = 1 : n
    L = (L + W)/2;
    W = x/L;
end
y = L;

%�Լ��� ������ ���������ϱ� clear��� ���� ������ ������ �ʿ����