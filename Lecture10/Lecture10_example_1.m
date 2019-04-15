cellmat = {23, 'a';
    1 : 2 : 9, 'hello'}

cellrowvec = {23, 'a', 1 : 2 : 9, 'hello'}

cellcolvec = {23;
    'a';
    1 : 2 : 9;
    'hello'}

size(cellmat)

size(cellrowvec)

size(cellcolvec)

cellrowvec{2}

cellmat{1,1}

C = {'one', 'two', 'three'; 1, 2, 3};
C{2, 3}
C{2, 3} = 300

nums = [C{2,:}]
