as yet unclassified
createOwnedElements
	| diamond id label |
	diamond := self figuresFactory newBox
		borderColor: (self typeColorFor: #forma);
		size: self height / 2 sqrt;
		element.
	diamond trachelShape rotateByDegrees: 45.
	id := self figuresFactory newLabel elementOn: #Tj.
	label := self figuresFactory newText elementOn: #'transaction kind name'.
	self
		add: diamond;
		add: id;
		add: label.
	(RTConstraint movable: self fix: diamond) stick.
	(RTConstraint movable: self fix: id) stick.
	(RTConstraint movable: self fix: label)
		outer;
		top;
		verticalPadding: 10;
		stick.
	self createPorts