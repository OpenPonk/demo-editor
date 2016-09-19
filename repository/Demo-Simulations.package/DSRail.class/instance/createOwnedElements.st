as yet unclassified
createOwnedElements
	| segment |
	super createOwnedElements.
	label := RTLabel new
		color: Color black;
		elementOn: self model.
	self add: label.
	(RTConstraint on: label background: spots first)
		top;
		outer;
		padding: 10;
		stick.
	spots
		overlappingPairsDo: [ :from :to | 
			segment := RTStyledMultiLine new
				withCenteredAttachPoint;
				dashedLine;
				width: 10;
				color: (Color fromHexString: 'd0d0d0');
				dashes: #(50 20);
				capRound;
				yourself.
			self add: (segment edgeFrom: from to: to) ]