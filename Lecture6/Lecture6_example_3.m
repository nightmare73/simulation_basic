% find �Լ�
Scores = [76, 45, 98 ,97];
cnt = 0;

% 1. for loop �� if ���ǹ� ���
for k = 1 : length(Scores)
    if(Scores(k) >= 90)
        cnt = cnt + 1;
    end
end
cnt
% 2. find �Լ� ���
answer2 = length(find(Scores >= 90))