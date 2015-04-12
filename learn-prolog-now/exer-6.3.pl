second(X,[_,X|_]).
swap12([X,Y|Tx],[Y,X|Tx]).
final(X,[H|T]) :- T = [], X = H.
final(X,[_|T]) :- T \= [], final(X,T).
toptail([_|InList],OutList) :- append(OutList,[_],InList).
swapfl([X|Tx],[Y|Ty]) :- append(Common,[Y],Tx), append(Common,[X],Ty).
