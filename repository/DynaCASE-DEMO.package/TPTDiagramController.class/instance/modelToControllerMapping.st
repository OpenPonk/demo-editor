accessing
modelToControllerMapping
	^ Dictionary new
		at: TransactionKind put: TPTTransactionKindController;
		at: ProductKind put: TPTProductKindController;
		yourself