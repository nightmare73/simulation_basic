function [r, theta] = xypolar(x, y)

r = sqrt(x^2 + y^2);
theta = atan(y / x);

% tan(-a) = tan(pi - a) ����
if theta < 0
    theta = theta + pi;
end

% 0 ~ pi ���̳� pi ~ 2*pi ���� ���⶧��
% tan(a) = tan(a + pi)
if y < 0
    theta = theta + pi;
end

end