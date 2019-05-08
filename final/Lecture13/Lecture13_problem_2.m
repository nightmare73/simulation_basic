
clear;


for Lv = 5 : 5
    figure;
    hold on;
    RandomMondrian(0, 0, 3, 2, Lv)
end


function RandomMondrian(a, b, L, W, Lv)

if Lv == 0
    x = [a, a, a + L, a + L];
    y = [b ,b + W, b + W, b];
    
    if rand < 1/3
        color = 'r';
    elseif rand < 2/3
        color = 'g';
    else
        color = 'b';
    end
    fill(x ,y, color);
end

RandomMondrian(a, b, L*2/3, W/2, Lv - 1)
RandomMondrian(a, b + W/2, L*2/3, W/2, Lv - 1)
RandomMondrian(a + L*2/3, b + W/2, L*1/3, W/2, Lv - 1)
RandomMondrian(a + L*2/3, b, L*1/3, W/2, Lv - 1)

end