as yet unclassified
modelToControllerMapping
	^ Dictionary new
		at: TransactionKind put: OCDTransactionKindController;
		at: AggregateTransactionKind put: OCDAggregateTransactionKindController;
		at: CompositeActorRole put: OCDCompositeActorRoleController;
		at: ElementaryActorRole put: OCDElementaryActorRoleController;
		at: InformationLink put: OCDInformationLinkController;
		yourself