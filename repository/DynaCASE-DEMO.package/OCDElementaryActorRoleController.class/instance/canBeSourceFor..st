as yet unclassified
canBeSourceFor: aController
	(aController isKindOf: OCDActorLinkController)
		ifTrue: [ (diagramController model isAlreadyExecutor: model)
				ifTrue: [ ^ false ].
			^ true ].
	^ aController isKindOf: OCDInformationLinkController 