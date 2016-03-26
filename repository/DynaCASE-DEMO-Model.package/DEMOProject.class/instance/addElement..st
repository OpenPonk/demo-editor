adding
addElement: anElementModel
	((anElementModel isMemberOf: ProductKind)
		or: (models anySatisfy: [ :each | each uuid = anElementModel uuid ]))
		ifFalse: [ models add: anElementModel.
			self sortProjectTree ]