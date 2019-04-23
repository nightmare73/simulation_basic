clear;

% �ݺ��� �ùķ��̼� Ƚ��
n = 100;

% ���� Ƚ���� ����
sum = 0;

for i = 1 : 100
    
    score = 0;  % ���� ����
    hits = 0;   % ��� ���� Ƚ��
    shots = 0;  % ���� Ƚ��
    
    while score < 25 && hits < 2
        % ���� x, y ��ǥ�� ���ϱ� ������ -2 ~ 2
        x = 4 * rand - 2;
        y = 4 * rand - 2;
        
        % x, y ��ǥ���� ���� ����ǥ��
        [r, theta] = xypolar(x, y);
        
        % ���� 10�� ���
        if r < 0.5
            score = score + 10;
            hits = hits + 1;
            % �� ���� ���
        elseif r > 1.5
            % ���� -1�� ���
            if y > 0
                score = score - 1;
                % ���� -2�� ���
            else
                score = score - 2;
            end
            % �߰� ���� ���
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