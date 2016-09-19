as yet unclassified
exampleMovingActor
| f v t1 t2 r1 r2 a1 a2 |
f := DSFiguresFactory new.

v := RTView new.

t1 := DSTransaction new.
v add: t1.

t2 := DSTransaction new.
v add: t2.

t2 core translateBy: 0 @ 600.

r1 := DSRail new.
r1 model: 'Customer'.
r1 addSpot: t1 initiatorSpot.
r1 addSpot: t2 initiatorSpot.
v add: r1.

r2 := DSRail new.
r2 model: 'Order completer'.
r2 addSpot: t1 executorSpot.
r2 addSpot: t2 executorSpot.
v add: r2.

a1 := DSActor new.
a1 model: 'Jessie'.
v add: a1.

a2 := DSActor new.
a2 model: 'Casey'.
v add: a2.


t1 initiatorSpot actor: a1.
t1 executorSpot actor: a2.

a1 moveToSpot: t1 initiatorSpot.
a2 moveToSpot: t2 executorSpot.

v inspect