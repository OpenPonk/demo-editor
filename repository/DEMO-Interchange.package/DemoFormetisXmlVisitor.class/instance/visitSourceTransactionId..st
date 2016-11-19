visiting - associations
visitSourceTransactionId: anElement
	| link |
	link := modelObject.
	anElement stringValue isEmpty
		ifFalse: [ unresolved add: [ link sourceTransaction: (self elementWithUuid: anElement uuidValue) ] ]