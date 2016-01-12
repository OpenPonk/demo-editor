accessing
modelToControllerMapping
	^ Dictionary new
		at: TransactionKind put: PSDTransactionKindController;
		yourself