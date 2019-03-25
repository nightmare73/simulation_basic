b = input('Enter b : ');
c = input('Enter c : ');
L = input('Enter L : ');
R = input('Enter R : ');

%xc = -b/2;
%
% if(abs(xc-L) == abs(xc-R))
%     disp('qleft and qright are equal')
% elseif(abs(xc-L) < abs(xc-R))
%     disp('qleft is smaller')
% else
%     disp('qright is smaller')
% end

ql = q(L,b,c);
qr = q(R,b,c);

if(ql == qr)
    disp('qleft and qright are equal')
elseif(ql < qr)
    disp('qleft is smaller')
else
    disp('qright is smaller')
end

% -2, 1, 0, 2
% -2, 1, 0 ,3

function f = q(x,b,c)
f = x*x + b*x + c;
end