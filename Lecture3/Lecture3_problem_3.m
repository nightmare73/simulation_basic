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
% ���� �� �ڵ�� 2�� �� ���⸸ �ϸ� �� ������ ������ �װ͵� �Ȱɷ� Ȯ���� ���޾���.

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
