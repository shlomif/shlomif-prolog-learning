greater_than(X,Y) :- X = succ(Y).
greater_than(X,Y) :- X = succ(Z),
    greater_than(Z,Y).

