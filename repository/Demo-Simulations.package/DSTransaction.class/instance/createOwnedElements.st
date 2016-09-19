as yet unclassified
createOwnedElements
	super createOwnedElements.
	initiatorSpot := DSActorSpot new.
	executorSpot := DSActorSpot new.
	(core := DSTransactionCore new) model: self model.
	connection := RTStyledMultiLine new
		attachPoint: RTBorderAttachPoint new;
		filledNarrowArrowHead;
		color: (Color fromHexString: 'd0d0d0');
		width: 5;
		edgeFrom: initiatorSpot to: executorSpot.
	core translateBy: 160 @ 0.
	flipped = true
		ifTrue: [ initiatorSpot translateBy: 320 @ 0 ]
		ifFalse: [ executorSpot translateBy: 320 @ 0 ].
	self add: connection.
	self add: initiatorSpot.
	self add: executorSpot.
	self add: core