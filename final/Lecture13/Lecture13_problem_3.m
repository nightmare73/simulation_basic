clear;

n = 10;

x = [0 3 3 0];
y = [0 0 1 1];
v = [0.0, 1.0, 1.0];

fill(x, y, v);
hold on;

for j = 1 : n
    v(1) = v(1) + 0.1;
    v(2) = v(2) - 0.1;
    
    fill(x, y + j, v);
    hold on;
end