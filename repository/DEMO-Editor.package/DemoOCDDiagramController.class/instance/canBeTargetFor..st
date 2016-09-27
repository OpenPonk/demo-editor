testing
canBeTargetFor: aController
	^ (aController isKindOf: DemoActorRoleController)
		| (aController isKindOf: DemoAbstractTransactionKindController)
		| (aController isKindOf: DemoScopeOfInterestController)