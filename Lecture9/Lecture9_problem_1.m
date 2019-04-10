x = 'ACGTTGCAGTTCCATATG';
x2 = '';
y = '';

for k = 1 : length(x)
    if x(k) == 'A'
        y = [y 'T'];
    elseif x(k) == 'T'
        y = [y 'A'];
    elseif x(k) == 'C'
        y = [y 'G'];
    else
        y = [y 'C'];
    end
end

y
y = '';

for k = length(x) : -1 : 1
    x2 = [x2 x(k)];
end

x2

for k = 1 : length(x)
    if x(k) == 'A'
        y = [y 'T'];
    elseif x(k) == 'T'
        y = [y 'A'];
    elseif x(k) == 'C'
        y = [y 'G'];
    else
        y = [y 'C'];
    end
end

y