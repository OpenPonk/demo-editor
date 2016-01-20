as yet unclassified
canBeTargetFor: aController
	(aController isKindOf: OCDActorLinkController)
		ifTrue:
			[ (aController source isKindOf: OCDTransactionKindController)
				ifFalse: [ ^ false ].
			((aController isKindOf: OCDExecutorLinkController)
				and: (diagramController model isAlreadyExecutor: model))
				ifTrue: [ ^ false ].
			^ true ].
	(aController isKindOf: OCDInformationLinkController)
		ifTrue: [ ^ (aController source isKindOf: OCDActorRoleController) not ].
	^ false