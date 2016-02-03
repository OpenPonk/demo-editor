hooks
createFigureInView: aView
	| container boxRectangle |
	subElements := RTGroup new.
	subElements
		addAll:
			(model elements collect: [ :each | (diagramController controllerForModel: each) figure ]).
	RTVerticalLineLayout new
		verticalGap: 30;
		on: subElements.
	boxRectangle := self computeBoxSize.
	container := (RTBox new
		width: boxRectangle x;
		height: boxRectangle y;
		color: Color veryVeryLightGray;
		borderColor: Color gray;
		borderWidth: 4) element.
	idLabel := (RTLabel new
		text: self printableID;
		color: Color black) element.
	nameLabel := (RTLabel
		text: model name;
		color: Color black) element.
	aView add: idLabel.
	aView add: nameLabel.
	(idLabelConstraint := RTConstraint on: idLabel background: container)
		top;
		padding: 5;
		stick.
	(nameLabelConstraint := RTConstraint on: nameLabel background: container)
		below;
		padding: 3;
		stick.
	subElements := RTGroup new.
	subElements
		addAll:
			(model elements collect: [ :each | (diagramController controllerForModel: each) figure ]).
	RTVerticalLineLayout new on: subElements.
	subElConstraint := RTConstraint on: subElements background: container.
	subElConstraint
		bottom;
		stick;
		padding: 25.
	container
		@
			(DCRTResizableSnapToGrid new
				cellSize: OCDDiagramController gridSize;
				minSize: OCDDiagramController universalElementSize).
	^ container