
x = '02/28';
y = tomorrow(x)


function y = tomorrow(x)
month = str2double(x(1 : 2));
day = str2double(x(4: 5));

L = [31 28 31 30 31 30 31 31 30 31 30 31];

if day + 1 <= L(month)
    newDay = day + 1;
    newMonth = month + 1;
else
    newDay = 1;
    
    if month < 12
        newMonth  = month + 1;
    else
        newMonth = 1;
    end
end

d = int2str(newDay);
if length(d) == 1
    d = ['0' d];
end

m = int2str(newMonth);

if length(m) == 1
    m = ['0' m];
end


y = [m '/' d];
end

% 책에 코딩테스트 할만한 문제가 많대.
% 비싸긴한데... ㅇㅈㄹ하는거 보니 책에서 시험문제 낼 가능성이 매우 높을듯