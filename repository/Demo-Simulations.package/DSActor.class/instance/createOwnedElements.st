as yet unclassified
createOwnedElements
	label := RTLabel new
		color: Color black;
		elementOn: self model.
	labelContainer := RTBox new
		size: 20;
		color: Color white;
		borderWidth: 2;
		borderColor: (Color fromHexString: '787878');
		element.
	self add: labelContainer.
	self add: label.
	(RTConstraint on: label background: self)
		below;
		outer;
		stick.
	(RTConstraint on: labelContainer background: label) stick.
	TRConstraint keepExtentOf: labelContainer like: label plus: 10 @ -5