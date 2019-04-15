clear;
table = {'Aluminum', 'Al', 26.98, 2.71;
    'Copper', 'Cu', 63.55, 8.94;
    'Iron', 'Fe', 55.85, 7.87}



table{4, 3} = mean( [table{:,3}] )