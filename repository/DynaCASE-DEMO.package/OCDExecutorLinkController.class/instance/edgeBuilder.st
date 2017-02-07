as yet unclassified
edgeBuilder
	| edge |
	edge := OPRTEdgeBuilder new.
	(source isKindOf: OCDTransactionKindController)
		ifTrue: [ edge filledDiamondHead ]
		ifFalse: [ edge filledDiamondTail ].
	^ edge