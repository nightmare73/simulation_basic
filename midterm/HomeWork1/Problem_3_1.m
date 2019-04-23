clear;

n = 1;
En = E(n);

while(~(abs(E(n + 1) - E(n)) < 0.000000000001))
    En = E(n);
    n = n + 1;
end
disp('n의 값은')
disp(n)
disp('En의 수렴값은')
disp(En);

function y = E(n)
sum = 0;
for k = 1 : n
    sum = sum + 1 / k;
end
y = sum - log(n);
end