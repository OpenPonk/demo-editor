as yet unclassified
createEdgeFrom: fromElement to: toElement
	| edge |
	edge := (DCRTStyledConnection new
		withContinuousRectangleAttachPoint;
		color: Color black).
	(source isKindOf: OCDTransactionKindController)
		ifTrue: [ edge head: RTFilledDiamond  ]
		ifFalse: [ edge tail: RTFilledDiamond ].
	edge := edge edgeFrom: fromElement to: toElement.
	^ edge @ DCRTConnectionHandles 