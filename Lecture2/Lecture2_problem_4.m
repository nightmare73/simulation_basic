b = input('Enter b : ');
c = input('Enter c : ');
L = input('Enter L : ');
R = input('Enter R : ');

xc = -b/2;

if( R <= xc )
    disp('q(R) is smallist\n')
    disp('최소값은')
    disp(q(R,b,c))
    disp('그때의 x값은')
    disp(R)
elseif( xc <= L)
    disp('q(L) is smallist\n')
    disp('최소값은')
    disp(q(L,b,c))
    disp('그때의 x값은')
    disp(L)
else
    disp('q(xc) is smallist\n')
    disp('최소값은')
    disp(q(xc,b,c))
    disp('그때의 x값은')
    disp(xc)
end
%흠 if else 문에는 최소값이랑 그 때의 x값만 담는 로직을 수행하고
%출력은 마지막 if문 나와서 하는게 낫네.. 흠;; 아직도 코딩실력이 모자르다 이말이야
function f = q(x,b,c)
f = x*x + b*x + c;
end