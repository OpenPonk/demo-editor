tests-as yet unclassified
testPrintableID
	| aggregateTransKind |
	aggregateTransKind := AggregateTransactionKind new.
	aggregateTransKind id: 5.
	self assert: (aggregateTransKind printableID) equals: 'AT5' 