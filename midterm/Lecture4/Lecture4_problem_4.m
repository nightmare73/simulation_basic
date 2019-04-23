clear;

n = 5;
k = 1;

trial = 1000;

xc = 0;
yc = 0;




for i = 1 : 10
    
    sum = 0;
    for j = 1 : trial
        
        while abs(xc) < n && abs(yc) < n
            r = randi([0,3]);
            
            if(r == 0) % µ¿ÂÊÇÑÄ­
                xc = xc + 1;
            elseif (r == 1) %¼­ÂÊÇÑÄ­
                xc = xc - 1;
            elseif (r == 2) % ³²ÂÊÇÑÄ­
                yc = yc - 1;
            else %ºÏÂÊÇÑÄ­
                yc = yc + 1;
            end
            
            x(k) = xc;
            y(k) = yc;
            
            k = k + 1;
        end
        
        sum = sum + k;
        k = 1;
        
    end
    
    sumArr(i) = sum ;
    n = n + 5;
    
end



for i = 1 : 10
    disp(sumArr(i))
    
end


% disp('Å¸ÀÏ ³¡±îÁöÀÇ ÀÌµ¿')
% disp(k)
%
% for i = 1 : k - 1
%     disp(x(i))
% end




%¾Æ¿À¾¾¹ß¿Ö¾ÊµÈµ¥??
