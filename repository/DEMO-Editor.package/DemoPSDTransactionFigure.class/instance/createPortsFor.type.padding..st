as yet unclassified
createPortsFor: aSymbol type: aType padding: aHorizontalPadding
	| p1 p2 |
	p1 := DemoPSDTransactionPortFigure basicNew
		model: aSymbol;
		perform: aType;
		initialize.
	p2 := DemoPSDTransactionPortFigure basicNew
		model: aSymbol;
		labelSide: #top;
		perform: aType;
		initialize.
	self add: p1.
	self add: p2.
	(RTConstraint on: p1 background: self)
		left;
		top;
		horizontalPadding: aHorizontalPadding;
		verticalPadding: -5;
		stick.
	(RTConstraint on: p2 background: self)
		left;
		bottom;
		horizontalPadding: aHorizontalPadding;
		verticalPadding: -5;
		stick