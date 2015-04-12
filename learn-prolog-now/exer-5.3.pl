addone([],[]).
addone([X|Tx],[Y|Ty]) :- Y is X+1, addone(Tx,Ty).
