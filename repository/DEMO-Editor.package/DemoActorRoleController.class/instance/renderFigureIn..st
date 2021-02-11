construction
renderFigureIn: aView
	| element |
	self diagramController addingFigureFor: self.
	
	element := (RTBox new
		size: OCDDiagramController universalElementSize x;
		color: Color white;
		borderColor: Color black;
		borderWidth: 2) element.
		
	idLabel := (RTLabel new
		text: model name;
		color: Color black) element.
		
	nameLabel := (RTLabel
		text: model name;
		color: Color black) element.
		
	aView add: idLabel.
	aView add: nameLabel.
	
	(idLabelConstraint := RTConstraint on: idLabel background: element)
		stick.
		
	(nameLabelConstraint := RTConstraint
		on: nameLabel
		background: element)
		below;
		padding: 3;
		stick.
	element
		@
			(DCRTResizableSnapToGrid new
				cellSize: OCDDiagramController gridSize;
				minSize: OCDDiagramController universalElementSize).
	figure := element.
	figure @ RTDraggable.
	figure @ OPRTFocusable.
	figure renderIn: aView.
	^ self diagramController addedFigureFor: self