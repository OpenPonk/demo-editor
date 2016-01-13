adding
addProductKind: aProductKind
	transactionKinds add: aProductKind.
	self elementAdded: aProductKind 