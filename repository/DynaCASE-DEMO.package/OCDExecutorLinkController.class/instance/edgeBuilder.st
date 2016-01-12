as yet unclassified
edgeBuilder
	| edge |
	edge := DCRTEdgeBuilder new.
	(source isKindOf: OCDTransactionKindController)
		ifTrue: [ edge filledDiamondHead ]
		ifFalse: [ edge filledDiamondTail ].
	^ edge