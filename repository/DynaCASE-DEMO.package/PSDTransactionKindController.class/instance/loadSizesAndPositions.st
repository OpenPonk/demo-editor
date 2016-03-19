as yet unclassified
loadSizesAndPositions
	| sizes positions |
	sizes := diagramController model getSizeFor: model dcID.
	positions := diagramController model getPositionFor: model dcID.
	swimLinesFrontLayer extent: (sizes at: 2).
	self figure translateTo: (positions at: 1).
	swimLinesFrontLayer translateTo: (positions at: 2).
	(diagramController model isSizeLocked: model dcID)
		ifTrue: [ transactionFrontLayer extent: (sizes at: 1).
			transactionFrontLayer translateTo: (positions at: 1) ].
	diagramController model saveSize: sizes for: model dcID.
	diagramController model savePosition: positions for: model dcID.
	labelConstraints do: [ :each | each move ]