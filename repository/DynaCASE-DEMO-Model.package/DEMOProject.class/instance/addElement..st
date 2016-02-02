adding
addElement: anElementModel
	((anElementModel isMemberOf: ProductKind)
		or: (diagrams anySatisfy: [ :each | each dcID = anElementModel dcID ]))
		ifFalse: [ diagrams add: anElementModel.
			self sortProjectTree ]