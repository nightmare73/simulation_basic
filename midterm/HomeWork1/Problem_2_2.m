clear;
n = 10;

k = 1;
% notCornerSum = ���� �ڳ� �κ��� �ƴѰ���� ��
% cornerSum = ���� �ڳ� �κ��� ����� ��
notCornerSum = 0;
cornerSum = 0;

for i = 1 : 1000
    %���� bot ��ǥ
    xc = 0; yc = 0;
    
    while(abs(xc) < n && abs(yc) < n)
        %�������� 0~7����
        rnd = randi([0,7]);
        
        if(rnd == 0) %����
            yc = yc + 1;
        elseif(rnd == 1) %�ϵ���
            xc = xc + 1;
            yc = yc + 1;
        elseif(rnd == 2) %����
            xc = xc + 1;
        elseif(rnd == 3) %������
            xc = xc + 1;
            yc = yc - 1;
        elseif(rnd == 4) %����
            yc = yc - 1;
        elseif(rnd == 5) %������
            xc = xc - 1;
            yc = yc - 1;
        elseif(rnd == 6) %����
            xc = xc - 1;
        else %�ϼ���
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