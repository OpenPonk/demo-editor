as yet unclassified
addSelfToModel: aModel
	aModel addTransactionKind: self.
	correspondingProductKind ifNotNil: [ aModel addProductKind: correspondingProductKind ]