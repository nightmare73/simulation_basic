clear;

x = linspace(-2, 4, 200);
k = 1;
y = 1 : 200;

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
xlabel('xÃà')
ylabel('yÃà')
