hooks
createFigure
	| ellipse |
	
	ellipse := (RTEllipse new
		borderColor: Color black;
		borderWidth: 0.5;
		color: Color white;
		size: DEMOConfig PSDProcStepSize) element.
	self addLabelTo: ellipse.
	
	^ ellipse