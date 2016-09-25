testing
canBeTargetFor: aController
	^ (aController isKindOf: DemoActorRoleController)
		| (aController isKindOf: DemoTransactionKindController)