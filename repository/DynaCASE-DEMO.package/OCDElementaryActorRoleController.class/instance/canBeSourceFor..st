as yet unclassified
canBeSourceFor: aController
	(aController isKindOf: OCDExecutorLinkController)
		ifTrue: [ (diagramController model isAlreadyExecutor: model)
				ifTrue: [ ^ false ].
			^ true ].
	^ (aController isKindOf: OCDInitiatorLinkController)
		or: (aController isKindOf: OCDInformationLinkController)