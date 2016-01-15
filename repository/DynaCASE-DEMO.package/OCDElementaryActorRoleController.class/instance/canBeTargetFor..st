as yet unclassified
canBeTargetFor: aController
	(aController isKindOf: OCDLinkController) ifFalse: [ ^ false ].
	(aController source isKindOf: OCDTransactionKindController) ifFalse: [ ^ false ].
	(diagramController model isAlreadyExecutor: model) ifTrue: [ ^ false ].
	^ true