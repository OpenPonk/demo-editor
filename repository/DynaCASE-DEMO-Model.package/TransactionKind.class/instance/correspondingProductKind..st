accessing
correspondingProductKind: aProductKind

	correspondingProductKind := aProductKind.
	
	aProductKind addedTo: self.
	aProductKind when: DCElementChanged do: [ self changed ].
	self announce: (DCElementAdded element: aProductKind).
	self changed