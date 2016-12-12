creating - subelements
createButtonFor: aSymbol side: aSide padding: aPadding
	| button |
	button := DSButton basicNew
		model: aSymbol;
		initialize.
	self add: button.
	(RTConstraint on: button background: self)
		perform: aSide;
		horizontalPadding: aPadding;
		stick