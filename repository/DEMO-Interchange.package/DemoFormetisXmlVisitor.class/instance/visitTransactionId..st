unsupported visiting
visitTransactionId: anElement 
	(#('CausalRuleDTO' 'ConditionalRuleDTO') includes: anElement parent localName)
		ifFalse: [ self shouldBeImplemented ]