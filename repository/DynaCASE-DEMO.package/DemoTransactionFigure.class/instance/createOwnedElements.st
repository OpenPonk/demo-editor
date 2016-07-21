as yet unclassified
createOwnedElements
	| diamond id label |
	diamond := self figuresFactory newBox
		borderColor: (self typeColorFor: #forma);
		size: self width / 2 sqrt;
		element.
	diamond trachelShape rotateByDegrees: 45.
	id := self figuresFactory newLabel elementOn: #Tj.
	label := self figuresFactory newText elementOn: #'transaction kind Tj'.
	self
		add: diamond;
		add: id;
		add: label.
	self @ self figuresFactory draggable.
	(RTConstraint movable: self fix: diamond) stick.
	(RTConstraint movable: self fix: id) stick.
	(RTConstraint movable: self fix: label)
		outer;
		bottom;
		stick