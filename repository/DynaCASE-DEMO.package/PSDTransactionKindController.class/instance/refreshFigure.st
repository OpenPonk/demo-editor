accessing
refreshFigure
	| encRect transHeight transWidth |
	
	lowerProcSteps size > 0
		ifTrue:
			[ transHeight := PSDDiagramController transactionHeight.
			encRect := lowerProcSteps encompassingRectangle.
			transWidth := encRect width + transHeight.
			(self figure trachelShape shapes at: 1)
				width: transWidth;
				height: transHeight.
			(self figure trachelShape shapes at: 2)
				translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y.
			(self figure trachelShape shapes at: 3)
				translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y ].
	(self figure trachelShape shapes at: 3) text: self printableID.
	label trachelShape text: model name.
	labelConstraint ifNotNil: [ labelConstraint move ].
	label signalUpdate.
	initiatorLabel trachelShape text:  'A' , model initiatorRole id asString , ': initiator ' , self printableID.
	executorLabel trachelShape text: 'A' , model executorRole id asString , ': executor ' , self printableID.
	super refreshFigure