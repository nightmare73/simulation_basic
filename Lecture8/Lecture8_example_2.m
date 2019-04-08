sampling = 100;

x = linspace(-2, 0, sampling);
y = linspace(0, 3, sampling);

[X, Y] = meshgrid(x, y);
Z = 2 + X - Y + 2 .* X .* X + 2 .* X .* Y + Y .* Y;

surf(X, Y, Z)