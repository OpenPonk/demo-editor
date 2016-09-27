as yet unclassified
exampleOCDShapes
	| v ear car tj atj |
	v := RTView new.

ear := DemoElementaryActorRoleFigure new.
v add: ear.
car := DemoCompositeActorRoleFigure new.
v add: car.
tj := DemoTransactionFigure new.
v add: tj.
atj := DemoAggregateTransactionFigure new.
v add: atj.

RTGridLayout new
	gapSize: 100;
	on: (v elements select: [ :each | each isKindOf: RTAbstractMultiElement ]).
v inspect