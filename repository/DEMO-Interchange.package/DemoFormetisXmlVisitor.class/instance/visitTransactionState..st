unsupported visiting
visitTransactionState: anElement
	(#('CausalRuleDTO' 'ConditionalRuleDTO') includes: anElement parent localName)
		ifFalse: [ self shouldBeImplemented ]