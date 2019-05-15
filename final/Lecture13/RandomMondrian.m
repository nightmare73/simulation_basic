function RandomMondrian(a, b, L, W, Lev)
if Lev==0
    x=[a a+L a+L a];
    y=[b b b+W b+W];
    r=rand;
    if r<= 1/3
        fill(x,y, 'r');
    elseif r>1/3 && r<= 2/3
        fill(x, y, 'g');
    else
        fill(x, y, 'b');
    end
else
    RandomMondrian(a, b, 2*L/3, W/2, Lev-1);
    RandomMondrian(a+2*L/3, b, L/3, W/2, Lev-1);
    RandomMondrian(a, b+W/2, 2*L/3, W/2, Lev-1);
    RandomMondrian(a+2*L/3, b+W/2, L/3, W/2, Lev-1);
end
    
    