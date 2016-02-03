testing
canBeTargetFor: aController
	^ (aController isKindOf: TPTTransactionKindController) or: (aController isKindOf: TPTProductKindController)