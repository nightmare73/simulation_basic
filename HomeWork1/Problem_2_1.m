clear;
n = 20;

k = 1;

%Ÿ�� ���� �����Ҷ� ������ �̵�Ƚ���� ����
sum = 0;

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
        
        k = k + 1;
    end
    
    disp('Ÿ�� �������� �̵�')
    disp(k)
    
    sum = sum + k;
    %k�� �ٽ� 1�� �ʱ�ȭ���ش�. �ȱ׷��� ������
    k = 1;
end

disp('sum = ');
disp(sum);
disp(sum/1000);
