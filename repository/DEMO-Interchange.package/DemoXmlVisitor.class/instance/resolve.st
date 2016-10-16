as yet unclassified
resolve
	elements
		keysAndValuesDo: [ :key :value | 
			value isBlock
				ifTrue: [ elements at: key put: value value ] ].
	unresolved do: #value