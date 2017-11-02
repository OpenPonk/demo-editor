visiting
visitCausalLink: anElement
	| link hasSource |
	hasSource := (anElement attributeAt: #SourceTransactionKindId) isNotEmpty.
	link := DemoCausalLink new
		uuid: (self uuidFor: anElement);
		sourceTransaction:
			(hasSource
				ifTrue: [ self elementAt: (anElement uuidAt: #SourceTransactionKindId) ]
				ifFalse: [ nil ]);
		destinationTransaction: (self elementAt: (anElement uuidAt: #DestinationTransactionKindId));
		sourceFact:
			(hasSource
				ifTrue: [ DemoFactType typeFor: (anElement stringAt: #SourceTransactionState) ]
				ifFalse: [ nil ]);
		destinationAct: (DemoFactType actFor: #rq);
		name: (anElement stringAt: #ExternalId);
		minMultiplicity: (anElement numberAt: #MinCardinality);
		maxMultiplicity: (anElement numberAt: #MaxCardinality).
	model add: link