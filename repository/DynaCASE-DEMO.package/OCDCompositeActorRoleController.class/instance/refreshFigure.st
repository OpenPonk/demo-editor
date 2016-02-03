figures
refreshFigure
	| boxRectangle |
	RTVerticalLineLayout new
		verticalGap: 30;
		on: subElements.
	boxRectangle := self computeBoxSize.
	figure trachelShape
		width: boxRectangle x;
		height: boxRectangle y.
	subElConstraint move.
	diagramController scopeOfInterest pushBack.
	super refreshFigure