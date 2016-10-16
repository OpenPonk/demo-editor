utility
elementAt: uuid
	(elements at: uuid) isBlock
		ifTrue: [ elements at: uuid put: (elements at: uuid) value ].
	^ elements at: uuid