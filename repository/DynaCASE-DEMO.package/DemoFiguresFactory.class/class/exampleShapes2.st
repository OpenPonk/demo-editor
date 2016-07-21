as yet unclassified
exampleShapes2
| v ear tj car f |
v := RTView new.

ear := DemoElementaryActorRoleFigure new.
v add: ear.
tj := DemoTransactionFigure new.
v add: tj.
car := DemoCompositeActorRoleFigure new.
v add: car.

f := DemoFiguresFactory new.

v add: (f initiatorLinkFrom: ear to: tj).
v add: (f executorLinkFrom: tj to: ear).
v add: (f informationLinkFrom: car to: tj).

RTGridLayout new
	gapSize: 100;
	on: (v elements select: [ :each | each isKindOf: RTAbstractMultiElement ]).
	
v inspect