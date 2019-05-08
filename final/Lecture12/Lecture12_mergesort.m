






function y = mergeSort(x)

n = length(x);
if n == 1
    y = x;
else
    m = floor(n/2);
    yL = mergeSort(x(1 : m));
    yR = mergeSort(x(m + 1 : n));
    y = merge(yL, yR);
end
end

function y = merge(L, R)

end