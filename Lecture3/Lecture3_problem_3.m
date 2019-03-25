% cnt = 0;
% 
% for k = 1 : 10000
%     dice1 = randi([1 6]);
%     dice2 = randi([1 6]);
%     dice3 = randi([1 6]);
%     
%     if((dice1 == dice2 || dice2 == dice3 || dice1 == dice3))
%         
%         cnt = cnt + 1;
%     end
% end
% cnt/10000
% 나는 이 코드는 2개 가 같기만 하면 즉 세개가 같으면 그것도 된걸로 확률을 구햇엇음.

clear;
N=10000;
hits = 0;
for i=1:N
    dice1 = randi([1,6],1,1);
    dice2 = randi([1,6],1,1);
    if dice1 == dice2
        hits = hits+1;
    end
end
disp(hits/N);
