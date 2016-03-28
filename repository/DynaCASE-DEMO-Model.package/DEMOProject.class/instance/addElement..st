adding
addElement: anElementModel
	((anElementModel isMemberOf: ProductKind)
		or: (models anySatisfy: [ :each | each = anElementModel ]))
		ifFalse: [ models add: anElementModel.
			self sortProjectTree ]