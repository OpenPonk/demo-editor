unsupported visiting
visitTransactionState: anElement 
	anElement parent localName = 'CausalRuleDTO'
		ifFalse: [ self shouldBeImplemented ]