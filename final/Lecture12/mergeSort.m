function y = mergeSort(x)
n = length(x);
if n==1
    y = x;
else
    m  = floor(n/2);
    % Sort the left half..
      yL = mergeSort(x(1:m));
    % Sort the right half...
      yR = mergeSort(x(m+1:n));
    % Merge...
      y  = merge(yL,yR);
end
