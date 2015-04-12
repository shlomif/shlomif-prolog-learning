combine1([],[],[]).
combine1([X|Tx],[Y|Ty],[X,Y|Result]) :- combine1(Tx,Ty,Result).

combine2([],[],[]).
combine2([X|Tx],[Y|Ty],[[X,Y]|Result]) :- combine2(Tx,Ty,Result).

combine3([],[],[]).
combine3([X|Tx],[Y|Ty],[join(X,Y)|Result]) :- combine3(Tx,Ty,Result).

mysubset([],_).
mysubset([X|Tx],Y) :- member(X,Y) , mysubset(Tx,Y).
