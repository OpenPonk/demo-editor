as yet unclassified
createOwnedElements
	| label |
	label := self figuresFactory newLabel
		height: 12;
		elementOn: #SoI.
	self add: label.
	self @ self figuresFactory draggable.
	(RTConstraint movable: self fix: label)
		border;
		top;
		stick