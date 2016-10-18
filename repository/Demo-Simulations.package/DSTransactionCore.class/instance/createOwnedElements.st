as yet unclassified
createOwnedElements
	iconElement := RTBitmap new
		size: 35;
		element.
	self add: iconElement.
	(RTConstraint on: iconElement background: self)
		center;
		stick.
	label := RTLabel new
		color: Color black;
		elementOn: self model name.
	self add: label.
	(RTConstraint on: label background: self)
		below;
		outer;
		stick