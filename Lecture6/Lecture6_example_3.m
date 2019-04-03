% find 함수
Scores = [76, 45, 98 ,97];
cnt = 0;

% 1. for loop 및 if 조건문 사용
for k = 1 : length(Scores)
    if(Scores(k) >= 90)
        cnt = cnt + 1;
    end
end
cnt
% 2. find 함수 사용
answer2 = length(find(Scores >= 90))