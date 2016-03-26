as yet unclassified
canBeTargetFor: aController
	^ (((aController isKindOf: OCDActorRoleController)
		or: (aController isMemberOf: OCDTransactionKindController))
		or: (aController isMemberOf: OCDAggregateTransactionKindController))
		or: (aController isMemberOf: OCDInformationLinkController)