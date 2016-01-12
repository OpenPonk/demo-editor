hooks
createFigure
	| ellipse |
	
	ellipse := (RTEllipse new
		borderColor: Color black;
		borderWidth: 0.5;
		color: Color white;
		size: PSDDiagramController procStepSize) element.
	self addLabelTo: ellipse.
	
	^ ellipse