function [r, theta] = xypolar(x, y)

r = sqrt(x^2 + y^2);
theta = atan(y / x);

% tan(-a) = tan(pi - a) 공식
if theta < 0
    theta = theta + pi;
end

% 0 ~ pi 값이나 pi ~ 2*pi 값이 같기때문
% tan(a) = tan(a + pi)
if y < 0
    theta = theta + pi;
end

end