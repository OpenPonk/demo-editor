as yet unclassified
canBeTargetFor: aController
	^ (super canBeTargetFor: aController) or: (aController isKindOf: OCDElementaryActorRoleController)