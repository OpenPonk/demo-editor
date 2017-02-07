private
elementRemoved: anElement
	anElement announcer unsubscribe: self.
	anElement removedFrom: self.
	self announce: (OPElementRemoved element: anElement).
	self changed