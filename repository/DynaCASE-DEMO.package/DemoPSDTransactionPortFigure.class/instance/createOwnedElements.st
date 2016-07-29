as yet unclassified
createOwnedElements
	| label |
	super createOwnedElements.
	label := self figuresFactory newLabel elementOn: self model.
	self add: label.
	(RTConstraint on: label background: self)
		perform: (labelSide ifNil: [ #bottom ]);
		outer;
		stick