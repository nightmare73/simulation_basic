function y = MySqrt(x)
L = x; W = x / L;
n = 5;
for k = 1 : n
    L = (L + W)/2;
    W = x/L;
end
y = L;

%함수는 어차피 지역변수니까 clear라는 변수 조지는 문구가 필요없대