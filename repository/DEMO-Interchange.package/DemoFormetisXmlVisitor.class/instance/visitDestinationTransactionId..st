visiting - associations
visitDestinationTransactionId: anElement
	|link|
	link := modelObject.
	unresolved
		add: [ link destinationTransaction: (self elementWithUuid: anElement uuidValue) ]