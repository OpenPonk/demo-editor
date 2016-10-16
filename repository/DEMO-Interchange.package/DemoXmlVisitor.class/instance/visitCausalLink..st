visiting
visitCausalLink: anElement
	| link hasSource |
	hasSource := (anElement attributeAt: #SourceTransactionId) isNotEmpty.
	link := DemoCausalLink new
		uuid: (self uuidFor: anElement);
		sourceTransaction:
			(hasSource
				ifTrue: [ self elementAt: (anElement uuidAt: #SourceTransactionId) ]
				ifFalse: [ nil ]);
		destinationTransaction: (self elementAt: (anElement uuidAt: #DestinationTransactionId));
		sourceFact:
			(hasSource
				ifTrue: [ DemoFactType typeFor: (anElement stringAt: #SourceTransactionState) ]
				ifFalse: [ nil ]);
		destinationAct: (DemoFactType actFor: #rq);
		name: (anElement stringAt: #ExternalId).
	model add: link