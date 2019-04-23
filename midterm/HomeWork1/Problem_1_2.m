clear;
% n = 원 위의 균등한 거리로 떨어져있는 점의 갯수
n = 3;
% An = n개의 점을 이은 원 내부 다각형 넓이
An = A(n);
% Bn = n개의 점들을 각각 접선으로 하는 원 외부의 다각형 넓이
Bn = B(n);

% Ad = An+1 - An의 절대값
Ad = Adf(n);
% Bd = Bn+1 - Bn의 절대값
Bd = Bdf(n);

Pn = (An + Bn) / 2;
% to = 절대오차
to = abs(Pn - pi);

%tol = 절대 오차 임계값
tol = input('절대 오차 임계값 입력 : ');

while(~(Ad < tol || Bd < tol))
    n = n + 1;
    Ad = Adf(n);
    Bd = Bdf(n);
    
    An = A(n);
    Bn = B(n);
    
    Pn = (An + Bn) / 2;
    to = abs(Pn - pi);
end

disp('가장 작은 정수 n : ')
disp(n);
disp('이 때의 절대 오차값 : ');
disp(to);

% n개의 점을 이은 원 내부 다각형 넓이
function f = A(n)
f = n / 2 * sin(2 * pi / n);
end
% n개의 점들을 각각 접선으로 하는 원 외부의 다각형 넓이
function f = B(n)
f = n * tan(pi / n);
end
% An+1 - An의 절대값
function f = Adf(n)
f = abs(A(n + 1) - A(n));
end
% Bn+1 - Bn의 절대값
function f = Bdf(n)
f = abs(B(n + 1) - B(n));
end