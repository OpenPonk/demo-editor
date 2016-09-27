accessing
transactionKindController
	^ (Array with: sourceController with: targetController)
		detect: [ :each | each isKindOf: DemoAbstractTransactionKindController ]