clear;
n = 20;

k = 1;

%타일 끝에 도달할때 까지의 이동횟수의 총합
sum = 0;

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
        
        k = k + 1;
    end
    
    disp('타일 끝까지의 이동')
    disp(k)
    
    sum = sum + k;
    %k는 다시 1로 초기화해준다. 안그러면 누적됨
    k = 1;
end

disp('sum = ');
disp(sum);
disp(sum/1000);
