as yet unclassified
createOwnedElements
	label := RTLabel new
		color: Color black;
		elementOn: 'Person'.
	self add: label.
	(RTConstraint on: label background: self)
		below;
		outer;
		stick