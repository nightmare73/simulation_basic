clear;
n = 10;

k = 1;
% notCornerSum = 완전 코너 부분이 아닌경우의 합
% cornerSum = 완전 코너 부분인 경우의 합
notCornerSum = 0;
cornerSum = 0;

for i = 1 : 1000
    %현재 bot 좌표
    xc = 0; yc = 0;
    
    while(abs(xc) < n && abs(yc) < n)
        %랜덤숫자 0~7까지
        rnd = randi([0,7]);
        
        if(rnd == 0) %북쪽
            yc = yc + 1;
        elseif(rnd == 1) %북동쪽
            xc = xc + 1;
            yc = yc + 1;
        elseif(rnd == 2) %동쪽
            xc = xc + 1;
        elseif(rnd == 3) %남동쪽
            xc = xc + 1;
            yc = yc - 1;
        elseif(rnd == 4) %남쪽
            yc = yc - 1;
        elseif(rnd == 5) %남서쪽
            xc = xc - 1;
            yc = yc - 1;
        elseif(rnd == 6) %서쪽
            xc = xc - 1;
        else %북서쪽
            xc = xc - 1;
            yc = yc + 1 ;
        end
    end
    
    if(abs(xc) == n && abs(yc) == n)
       cornerSum = cornerSum + 1;
    else
        notCornerSum = notCornerSum + 1;
    end
    
end

disp('cornerSum = ');
disp(cornerSum);
disp(cornerSum/1000);


disp('notCornerSum = ');
disp(notCornerSum);
disp(notCornerSum/1000);