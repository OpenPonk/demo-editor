unsupported visiting
visitTransactionId: anElement 
	anElement parent localName = 'CausalRuleDTO'
		ifFalse: [ self shouldBeImplemented ]