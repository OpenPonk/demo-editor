as yet unclassified
createOwnedElements
	| halfCircle |
	super createOwnedElements.
	halfCircle := self figuresFactory newRoundedBox
		borderRadius: 20;
		width: self defaultSize * 1.2;
		height: self defaultSize;
		color: Color transparent;
		element.
	self addFirst: halfCircle.
	(RTConstraint on: halfCircle background: self)
		left;
		padding: 0;
		stick.
	ownedElements third model: #ATj.
	ownedElements fourth model: #'          aggregate
transaction kind ATj'