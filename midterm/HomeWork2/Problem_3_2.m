clear;

% 반복할 시뮬레이션 횟수
n = 100;

% 던진 횟수의 총합
sum = 0;

for i = 1 : 100
    
    score = 0;  % 점수 총합
    hits = 0;   % 가운데 맞힌 횟수
    shots = 0;  % 던진 횟수
    
    while score < 25 && hits < 2
        % 랜덤 x, y 좌표값 구하기 범위는 -2 ~ 2
        x = 4 * rand - 2;
        y = 4 * rand - 2;
        
        % x, y 좌표값에 대한 극좌표값
        [r, theta] = xypolar(x, y);
        
        % 점수 10인 경우
        if r < 0.5
            score = score + 10;
            hits = hits + 1;
            % 원 밖의 경우
        elseif r > 1.5
            % 점수 -1인 경우
            if y > 0
                score = score - 1;
                % 점수 -2인 경우
            else
                score = score - 2;
            end
            % 중간 원의 경우
        else
            if 0 <= theta && theta < pi/4
                score = score + 1;
            elseif pi/4 <= theta && theta < pi/2
                score = score + 2;
            elseif pi/2 <= theta && theta < 3*pi/4
                score = score + 3;
            elseif 3*pi/4 <= theta && theta < pi
                score = score + 4;
            elseif pi <= theta && theta < 5*pi/4
                score = score + 5;
            elseif 5*pi/4 <= theta && theta < 3*pi/2
                score = score + 6;
            elseif 3*pi/2 <= theta && theta < 7*pi/4
                score = score + 7;
            elseif 7*pi/4 <= theta && theta < 2*pi
                score = score + 8;
            end
        end
        shots = shots + 1;
    end
    sum = sum + shots;
    
end

sum / n