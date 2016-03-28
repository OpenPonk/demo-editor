figures
refreshFigure
	subElFigures removeAll.
	subElFigures addAll: (subElements collect: [ :each | each figure ]).
	RTVerticalLineLayout new
		verticalGap: 30;
		on: subElFigures.
	subElConstraint move.
	diagramController scopeOfInterest ifNotNil: [ diagramController scopeOfInterest pushBack ].
	super refreshFigure