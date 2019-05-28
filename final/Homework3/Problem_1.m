clear;

PowerP(3, 4)

% y = x ^ n (n은 음수가 아닌 정수)
function y = PowerP(x, n)

% n이 짝수이면 1 홀수이면 0 
nIsEvenNum = mod(n, 2) == 0;

if n == 0
    y = 1;
elseif nIsEvenNum
    y = PowerP(x, n/2) * PowerP(x, n/2);
else
    y = PowerP(x, (n - 1) / 2) * PowerP(x, (n - 1) / 2) * x;
end

end