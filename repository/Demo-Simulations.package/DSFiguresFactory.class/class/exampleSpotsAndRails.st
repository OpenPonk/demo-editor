as yet unclassified
exampleSpotsAndRails
| f v t1 t2 r1 r2 |
f := DSFiguresFactory new.

v := RTView new.

t1 := DSTransaction new.
v add: t1.

t2 := DSTransaction new.
v add: t2.

t2 ownedElements translateBy: 0 @ 300.

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

v inspect