visitor
visitCActTrueCreatingTransactionId: anElement 
	anElement parent localName = 'CausalRuleDTO'
		ifFalse: [ self shouldBeImplemented ]