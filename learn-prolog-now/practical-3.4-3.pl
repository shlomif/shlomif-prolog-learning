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

travel(X,Z,go(X,Z)) :- bySomething(X,Z).
travel(X,Z,go(X,Y,ChildWay)) :- bySomething(X,Y),
    travel(Y,Z,ChildWay).

