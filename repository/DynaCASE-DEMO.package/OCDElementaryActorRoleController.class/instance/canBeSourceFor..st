as yet unclassified
canBeSourceFor: aController
	(aController isKindOf: OCDLinkController) ifFalse: [ ^ false ].
	(diagramController model isAlreadyExecutor: model) ifTrue: [ ^ false ].
	^ true