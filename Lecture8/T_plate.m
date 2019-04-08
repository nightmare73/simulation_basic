function temp = T_plate(x, y)
% temp  = (x, y) 위치에서의 온도
temp = 100 * exp(-0.4 * ((x - 1)^2 + 0.7 * (y - 3)^2) + 80 * exp(-0.2 * (2 * (x - 5)^2 + 1.5 * (y - 1)^2)));