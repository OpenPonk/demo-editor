as yet unclassified
createFigureInView: aView
	| element |
	element := (RTBox new
		size: OCDDiagramController universalElementSize x;
		color: Color white;
		borderColor: Color black;
		borderWidth: 2) element.
	idLabel := (RTLabel new
		text: self printableID;
		color: Color black) element.
	nameLabel := (RTLabel
				text: model name;
				color: Color black) element.
	aView add: idLabel.
	aView add: nameLabel.
	(idLabelConstraint := RTConstraint on: idLabel background: element)
		stick.
	(nameLabelConstraint := RTConstraint on: nameLabel background: element)
		below;
		padding: 3;
		stick.
	element
		@
			(DCRTResizableSnapToGrid new
				cellSize: OCDDiagramController gridSize;
				minSize: OCDDiagramController universalElementSize).
	^ element