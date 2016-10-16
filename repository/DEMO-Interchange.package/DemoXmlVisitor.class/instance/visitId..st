visiting
visitId: anElement
	self assert: [ anElement parent parent name = 'Transaction' ].
	unresolved
		add:
			[ (self elementAt: (self uuidFor: anElement parent parent)) addInitiator: (self elementAt: (UUID fromString: anElement stringValue)) ]