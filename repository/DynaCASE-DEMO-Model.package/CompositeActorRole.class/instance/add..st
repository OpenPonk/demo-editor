as yet unclassified
add: anElement
	super add: anElement.
	anElement when: DCElementRemoved send: #changed to: self.