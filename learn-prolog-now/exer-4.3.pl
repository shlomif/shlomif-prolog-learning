twice([],[]).
twice([I|Ti],[O1,O2|To]) :- O1 = I, O2 = I, twice(Ti,To).
