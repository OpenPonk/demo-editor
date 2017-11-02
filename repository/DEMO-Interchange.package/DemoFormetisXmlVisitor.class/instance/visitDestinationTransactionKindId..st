visiting
visitDestinationTransactionKindId: anElement
	|link|
	link := modelObject.
	unresolved
		add: [ link destinationTransaction: (self elementWithUuid: anElement uuidValue) ]