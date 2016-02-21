figures
refreshFigure
	| boxRectangle |
	subElFigures removeAll.
	subElFigures addAll: (subElements collect: [ :each | each figure ]).
	RTVerticalLineLayout new
		verticalGap: 30;
		on: subElFigures.
	"boxRectangle := self computeBoxSize.
	figure trachelShape
		width: boxRectangle x;
		height: boxRectangle y"
	subElConstraint move.
	diagramController scopeOfInterest ifNotNil: [ diagramController scopeOfInterest pushBack ].
	super refreshFigure