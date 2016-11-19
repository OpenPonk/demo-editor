visiting - attributes
visitSourceTransactionState: anElement
	| map |
	map := (#(Promised promise Declined decline Requested request Quitted quit Accepted accept Rejected reject Stated state Stopped stop)
		pairsCollect: [ :a :b | a -> b ]) asDictionary.
	modelObject sourceFact: (DemoFact new type: (map at: anElement stringValue))