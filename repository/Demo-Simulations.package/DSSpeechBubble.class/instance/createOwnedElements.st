as yet unclassified
createOwnedElements
	| block tip overlap side |
	super createOwnedElements.
	side := isLeft ifTrue: [ #left ] ifFalse: [ #right ].
	overlap := RTBox new
		width: 3;
		height: 20;
		color: Color white;
		element.
	tip := RTPolygon new
		borderColor: (Color fromHexString: '787878');
		borderWidth: 2;
		color: Color white;
		vertices:
			{0 @ 0.
			isLeft
				ifTrue: [ -40 @ 20 ]
				ifFalse: [ 40 @ 20 ].
			0 @ 20};
		element.
	self add: tip.
	self add: overlap.
	text := RTText new
		fontSize: 13;
		color: Color black;
		wrapText;
		elementOn: self model.
	self add: text.
	(RTConstraint on: text background: self) stick.
	(RTConstraint on: tip background: self)
		perform: side;
		outer;
		stick.
	(RTConstraint on: overlap background: self)
		perform: side;
		border;
		stick.
	block := [ :aShape :step | 
	text shape width: aShape width - 20.
	text update ].
	self addCallback: (TRTranslationCallback block: block).
	self addCallback: (TRExtentCallback block: block)