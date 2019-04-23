cnt = 0;
% 
% for k = 1 : 1000
%     cutPnt = rand;
%     short = 1 - cutPnt;
%     
%     if(short < 0.5)
%         cnt = cnt + 1;
%     end
% end
%     cnt
    
sSum = 0;
lSum = 0;
    
for k = 1 : 1000
    cutPnt = rand;
    short = min( cutPnt, 1 - cutPnt);
    long = max( cutPnt, 1 - cutPnt);
    sSum = sSum + short;
    lSum = lSum + long;
end

disp(sSum/1000)
disp(lSum/1000)