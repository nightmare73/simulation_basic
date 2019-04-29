% clear;
% fid = fopen('statepop.txt','r');
% 
% state = textscan(fid, '%s %d');
% 
% [sortedNumber, idx] = sort(state{1,2});
% 
% sortedState = state{1,1}(idx);
% 
% result = [sortedState sortedNumber]
% 
% fclose(fid);

% 교수가 한거
clear;
fid = fopen('statepop.txt','r');
A = textscan(fid, '%s %f');

A_1 = A{1,1}; % 주 이름
A_2 = A{1,2}; % 주의 인구

[y, idx] = sort(A_2);

fid_1 = fopen('statedpopSorted.txt','w');
for i = 1 : length(y)
    fprintf(fid_1, '%s %d\n', A_1{idx(i)}, A_2(idx(i)));
end

fclose(fid);
fclose(fid_1);
