adding
addTransactionKind: aTransactionKind

	transactionKinds add: aTransactionKind.
	
	aTransactionKind addedTo: self.
	aTransactionKind when: DCElementChanged do: [ self changed ].
	self announce: (DCElementAdded element: aTransactionKind).
	self changed