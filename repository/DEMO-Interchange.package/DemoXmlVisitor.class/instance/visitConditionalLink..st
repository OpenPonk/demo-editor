visiting
visitConditionalLink: anElement
	| link |
	link := DemoConditionalLink new
		uuid: (self uuidFor: anElement);
		sourceTransaction: (self elementAt: (anElement uuidAt: #SourceTransactionId));
		destinationTransaction: (self elementAt: (anElement uuidAt: #DestinationTransactionId));
		sourceFact: (DemoFactType typeFor: (anElement stringAt: #SourceTransactionState));
		destinationAct:
			(DemoAct new type: (anElement stringAt: #DestinationTransactionCAct) asLowercase asSymbol);
		name: (anElement stringAt: #ExternalId).
	model add: link