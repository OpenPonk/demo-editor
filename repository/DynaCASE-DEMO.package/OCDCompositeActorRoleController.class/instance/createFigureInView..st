hooks
createFigureInView: aView
	| container labelled  boxRectangle |
	
	subElements := RTGroup new.
	subElements addAll: (model elements collect: [ :each | 
		(diagramController controllerForModel: each) figure ]).
	RTVerticalLineLayout new verticalGap: 30; on: subElements.
	
	boxRectangle := self computeBoxSize.
	container := (RTBox new
		width: boxRectangle x;
		height: boxRectangle y;
		color: Color veryVeryLightGray;
		borderColor: Color gray;
		borderWidth: 4) elementOn: 'CAx'.
	
	(labelled := RTLabelled new)
		view: aView;
		top;
		color: Color black.
	container @ labelled.
	(RTConstraint on: labelled lbl background: container)
		top;
		padding: 5;
		stick.

	nameLabel := (RTLabel new text: (model name); color: Color black) element.
	aView add: nameLabel.
	nameLabelConstraint := RTConstraint on: nameLabel background: container.
	nameLabelConstraint
		below;
		padding: 3;
		stick.
		
	subElements := RTGroup new.
	subElements addAll: (model elements collect: [ :each | 
		(diagramController controllerForModel: each) figure ]).
	RTVerticalLineLayout new on: subElements.

	subElConstraint := RTConstraint on: subElements background: container.
	subElConstraint 
		bottom;
		stick;
		padding: 25.

	^ container