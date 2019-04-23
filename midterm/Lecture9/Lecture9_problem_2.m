S = 'ACCT';
T = 'ATGACCTGA'

k = FindCopy(S, T)

W = 'ACCGTA';
k = FindCopy(W, T)



function k = FindCopy(S, T)

First = 1;
Last = length(S);

while Last <= length(T) && ~strcmp(S, T(First:Last))
    First = First + 1;
    Last = Last + 1;
end

if Last > length(T)
    k = 0;
else
    k = First;
end
end