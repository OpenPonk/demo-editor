as yet unclassified
addLabelTo: aFigure
	label := (RTLabel new
		color: Color black;
		text: name;
		height: 8) element.
	isUpper
		ifTrue:
			[ (RTConstraint on: label background: aFigure)
				below;
				center;
				padding: -2;
				stick ]
		ifFalse:
			[ (RTConstraint on: label background: aFigure)
				above;
				center;
				padding: -1;
				stick ].