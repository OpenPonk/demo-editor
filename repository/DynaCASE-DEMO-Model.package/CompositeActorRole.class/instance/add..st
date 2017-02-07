adding
add: anElement
	super add: anElement.
	anElement when: OPElementRemoved send: #changed to: self.