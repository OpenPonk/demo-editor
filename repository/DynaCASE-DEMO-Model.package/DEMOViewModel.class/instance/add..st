adding
add: anElementModel
	anElementModel addSelfToModel: self.
	(anElementModel isKindOf: DCEdge)
		ifFalse: [ projectModel add: anElementModel ]