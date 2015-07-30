accMin([H|T],A,Min) :-
    H < A,
    accMin(T,H,Min).

accMin([H|T],A,Min) :-
    H >= A,
    accMin(T,A,Min).

accMin([],A,A).

scalarMult(_,[],[]).
scalarMult(Mm,[X|Tx],[Y|Ty]) :- Y is Mm*X, scalarMult(Mm,Tx,Ty).

accDot([X|Tx],[Y|Ty],A,R) :-
    Anew is A + X*Y,
    accDot(Tx,Ty,Anew,R).

accDot([],[],A,A).

dot(X,Y,Result) :- accDot(X,Y,0,Result).
