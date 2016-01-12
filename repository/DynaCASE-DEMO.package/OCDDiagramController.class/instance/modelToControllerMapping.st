as yet unclassified
modelToControllerMapping
	^ Dictionary new
		at: TransactionKind put: OCDTransactionKindController;
		at: CompositeActorRole put: OCDCompositeActorRoleController;
		at: ElementaryActorRole put: OCDElementaryActorRoleController;
		yourself