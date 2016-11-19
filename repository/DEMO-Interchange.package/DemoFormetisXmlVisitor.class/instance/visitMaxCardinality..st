visiting - attributes
visitMaxCardinality: anElement
	modelObject
		maxMultiplicity:
			(anElement isEmptyValue
				ifTrue: [ Float infinity ]
				ifFalse: [ anElement numberValue ])