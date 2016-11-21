unsupported visiting
visitFactId: anElement
	(#('CausalRuleDTO' 'ConditionalRuleDTO') includes: anElement parent localName)
		ifFalse: [ self shouldBeImplemented ]