as yet unclassified
canBeTargetFor: aController
	^ (aController isKindOf: OCDActorRoleController) or:
	((aController isMemberOf: OCDTransactionKindController) or:
	(aController isMemberOf: OCDAggregateTransactionKindController))