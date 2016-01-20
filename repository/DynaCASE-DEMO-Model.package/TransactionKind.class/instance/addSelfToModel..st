adding
addSelfToModel: aModel
	aModel addTransactionKind: self.
	correspondingProductKind ifNotNil: [ aModel addProductKind: correspondingProductKind ]