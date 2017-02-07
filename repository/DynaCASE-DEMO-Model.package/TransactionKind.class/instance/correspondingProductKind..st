accessing
correspondingProductKind: aProductKind

	correspondingProductKind := aProductKind.
	
	aProductKind addedTo: self.
	aProductKind when: OPElementChanged do: [ self changed ].
	self announce: (OPElementAdded element: aProductKind).
	self changed