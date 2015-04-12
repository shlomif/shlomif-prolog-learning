% prolog

swap(leaf(X),leaf(X)).
swap(tree(X,Y),tree(W,Z)) :- swap(W,Y), swap(X,Z).
