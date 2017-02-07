as yet unclassified
createEdgeFrom: fromElement to: toElement
	| edge |
	edge := (OPRTStyledConnection new
		withBorderAttachPoint;
		color: Color black).
	(source isKindOf: OCDTransactionKindController)
		ifTrue: [ edge head: RTFilledDiamond  ]
		ifFalse: [ edge tail: RTFilledDiamond ].
	edge := edge edgeFrom: fromElement to: toElement.
	^ edge @ OPRTConnectionHandles 