tests-accessing
testCorrespondingProductKind
	| result aProdKind |
	
	aProdKind := ProductKind new.
	aProdKind dcID: 'prodKindTestId'.
	
	transactionKind correspondingProductKind: aProdKind.
	result := transactionKind correspondingProductKind.
	
	self assert: aProdKind equals: result 