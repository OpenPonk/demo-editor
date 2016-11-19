visiting - attributes
visitMinCardinality: anElement
	modelObject
		minMultiplicity:
			(anElement isEmptyValue
				ifTrue: [ 0 ]
				ifFalse: [ anElement numberValue ])