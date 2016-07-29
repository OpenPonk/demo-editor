as yet unclassified
createOwnedElements
	| label labelSide|
	super createOwnedElements.
	label := self figuresFactory newLabel elementOn: #rq.
	self add: label.
	labelSide := #bottom.
	(RTConstraint on: label background: self)
		perform: labelSide;
		outer;
		stick