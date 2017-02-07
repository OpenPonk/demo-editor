private
elementAdded: anElement
	anElement addedTo: self.
	anElement when: OPElementChanged do: [ self changed ].
	self announce: (OPElementAdded element: anElement).
	self changed