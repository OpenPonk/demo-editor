accessing
refreshFigure
	| encRect transHeight transWidth labelText |
	lowerProcSteps size > 0
		ifTrue: [ transHeight := DEMOConfig PSDTransactionHeight.
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
	model initiatorRole
		ifNil: [ labelText := 'Initiator not defined' ]
		ifNotNilDo:
			[ :tmp | labelText := 'A' , model initiatorRole id asString , ': initiator ' , self printableID ].
	initiatorLabel trachelShape text: labelText.
	model executorRole
		ifNil: [ labelText := 'Initiator not defined' ]
		ifNotNilDo:
			[ :tmp | labelText := 'A' , model executorRole id asString , ': executor ' , self printableID ].
	executorLabel trachelShape text: labelText.
	swimLinesFrontLayer signalUpdate.
	swimLines signalUpdate.
	labelConstraints do: [ :each | each move ].
	super refreshFigure