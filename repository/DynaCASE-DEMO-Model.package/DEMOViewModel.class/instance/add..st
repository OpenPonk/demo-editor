adding
add: anElementModel
	anElementModel addSelfToModel: self.
	(anElementModel isKindOf: OPEdge)
		ifFalse: [ projectModel add: anElementModel ]