prefix(P,L) :- append(P,_,L).
suffix(S,L) :- append(_,S,L).
sublist(SubL,L) :- suffix(S,L),prefix(SubL,S).

left(X,Y,List) :- sublist(X_some_Y,List), 
    append([X],_,X_and_tail),
    append(X_and_tail,[Y],X_some_Y).

right(X,Y,List) :- left(Y,X,List).

% [english,red,snail].

houses(List) :-
    length(List,3),
    member([english,red,_], List),
    member([spanish,_,jaguar], List),
    right([japanese,_,_],[_,_,snail], List), 
    left([_,_,snail],[_,blue,_], List).

