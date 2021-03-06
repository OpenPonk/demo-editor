accessing
refreshFigure
	| encRect transWidth labelText |
	super refreshFigure.
	"Size"
	(diagramController model isSizeLocked: model uuid)
		ifTrue: [ (self figure trachelShape shapes at: 1)
				width: ((diagramController model getSizeFor: model uuid) at: 1) x;
				height: DEMOConfig PSDTransactionHeight.
			lowerProcSteps size > 0
				ifTrue: [ (self figure trachelShape shapes at: 2) translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y.
					(self figure trachelShape shapes at: 3) translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y ] ]
		ifFalse: [ lowerProcSteps size > 0
				ifTrue: [ encRect := lowerProcSteps encompassingRectangle.
					transWidth := encRect width + DEMOConfig PSDTransactionHeight.
					(self figure trachelShape shapes at: 1)
						width: transWidth;
						height: DEMOConfig PSDTransactionHeight.
					(self figure trachelShape shapes at: 2) translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y.
					(self figure trachelShape shapes at: 3) translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y ] ].

	"Labels"
	(self figure trachelShape shapes at: 3) text: self printableID.
	label trachelShape text: model name.
	labelConstraint ifNotNil: [ labelConstraint move ].
	label signalUpdate.
	model initiatorRole
		ifNil: [ labelText := 'Initiator not defined' ]
		ifNotNil: [ :tmp | labelText := 'A' , model initiatorRole id asString , ': initiator ' , self printableID ].
	initiatorLabel trachelShape text: labelText.
	model executorRole
		ifNil: [ labelText := 'Initiator not defined' ]
		ifNotNil: [ :tmp | labelText := 'A' , model executorRole id asString , ': executor ' , self printableID ].
	executorLabel trachelShape text: labelText.

	"Swimmlines"
	swimLinesFrontLayer signalUpdate.
	swimLines signalUpdate.
	labelConstraints do: [ :each | each move ].

	"Other"
	transactionFrontLayer ifNotNil: [ transactionFrontLayer pushFront. 
		transactionFrontLayer signalUpdate ]