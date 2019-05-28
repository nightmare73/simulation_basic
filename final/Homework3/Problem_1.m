clear;

PowerP(3, 4)

% y = x ^ n (n�� ������ �ƴ� ����)
function y = PowerP(x, n)

% n�� ¦���̸� 1 Ȧ���̸� 0 
nIsEvenNum = mod(n, 2) == 0;

if n == 0
    y = 1;
elseif nIsEvenNum
    y = PowerP(x, n/2) * PowerP(x, n/2);
else
    y = PowerP(x, (n - 1) / 2) * PowerP(x, (n - 1) / 2) * x;
end

end