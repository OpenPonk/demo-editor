adding
addElement: anElement
	(anElement isMemberOf: ProductKind)
		ifFalse:
			[ diagrams add: anElement.
			self sortProjectTree ]