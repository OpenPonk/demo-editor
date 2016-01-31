adding
addElement: anElement
	((anElement isMemberOf: ProductKind)
		or: (diagrams anySatisfy: [ :each | each dcID = anElement dcID ]))
		ifFalse: [ diagrams add: anElement.
			self sortProjectTree ]