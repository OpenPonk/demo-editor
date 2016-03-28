as yet unclassified
canBeTargetFor: aController
	(aController isKindOf: OCDActorLinkController)
		ifTrue: [ ^ aController source isKindOf: OCDTransactionKindController ].
	(aController isKindOf: OCDInformationLinkController)
		ifTrue: [ ^ (aController source isKindOf: OCDActorRoleController) not ].
	^ aController isKindOf: OCDElementaryActorRoleController