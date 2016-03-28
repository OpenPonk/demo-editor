as yet unclassified
loadSizesAndPositions
	| sizes positions |
	sizes := diagramController model getSizeFor: model uuid.
	positions := diagramController model getPositionFor: model uuid.
	swimLinesFrontLayer extent: (sizes at: 2).
	self figure translateTo: (positions at: 1).
	swimLinesFrontLayer translateTo: (positions at: 2).
	(diagramController model isSizeLocked: model uuid)
		ifTrue: [ transactionFrontLayer extent: (sizes at: 1).
			transactionFrontLayer translateTo: (positions at: 1) ].
	diagramController model saveSize: sizes for: model uuid.
	diagramController model savePosition: positions for: model uuid.
	labelConstraints do: [ :each | each move ]