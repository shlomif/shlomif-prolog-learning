byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(losAngeles,auckland).

bySomething(X,Y) :- byCar(X,Y);byTrain(X,Y);byPlane(X,Y).
byWhat(X,Y,car) :- byCar(X,Y).
byWhat(X,Y,train) :- byTrain(X,Y).
byWhat(X,Y,plane) :- byPlane(X,Y).

travel(X,Z,go(X,Z,Method)) :- byWhat(X,Z,Method).
travel(X,Z,go(X,Y,Method,ChildWay)) :- byWhat(X,Y,Method),
    travel(Y,Z,ChildWay).

