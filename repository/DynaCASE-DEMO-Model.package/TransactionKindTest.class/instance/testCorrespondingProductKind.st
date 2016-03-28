tests-accessing
testCorrespondingProductKind
	| result aProdKind |
	
	aProdKind := ProductKind new.
	aProdKind id: 'prodKindTestId'.
	
	transactionKind correspondingProductKind: aProdKind.
	result := transactionKind correspondingProductKind.
	
	self assert: aProdKind equals: result 