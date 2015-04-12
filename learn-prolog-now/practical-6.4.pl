member2(X,L) :- append(P,_,L),append(_,[X],P).

memberlist([H],List) :- member(H,List).

set([],[]).
set([H|T],MySet) :- set(T,MySet), member(H,MySet).
set([H|T],[H|MySet]) :- set(T,MySet), \+member(H,MySet).

flatten([],[]).
flatten([H|T],Flat) :- flatten(T,FlatT), flatten(H,FlatH), 
    append(FlatH,FlatT,Flat).
flatten(A,[A]) :- A \= [_|_], A \= [].
