adding
add: anElementModel
	anElementModel addSelfToModel: self.
	(anElementModel isKindOf: OPDirectedAssociation)
		ifFalse: [ projectModel add: anElementModel ]