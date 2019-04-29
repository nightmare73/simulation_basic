clear;

N = 200;
%result = zeros(1,30);
k = 1;

for n = 2 : 2 : N
    
    cnt = 1;
    x = (1 : n)';
    
    y = PerfectShuffle(x);
    
    while sum(abs(x-y)) > 0 % 이러면 x 랑 y가 다른한 이라는 뜻이라네... 흠;;
        y = PerfectShuffle(y);
        cnt = cnt + 1;
    end
    
    result(k) = cnt;
    k = k + 1;
    
end

plot((2:2:N),result)