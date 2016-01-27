private
elementRemoved: anElement
	anElement announcer unsubscribe: self.
	anElement removedFrom: self.
	self announce: (DCElementRemoved element: anElement).
	self changed