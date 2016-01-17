as yet unclassified
canBeTargetFor: aController
	(aController isKindOf: OCDInformationLinkController)
		ifTrue: [ ^ (aController source isKindOf: OCDActorRoleController) not ].
	^ aController isKindOf: OCDElementaryActorRoleController