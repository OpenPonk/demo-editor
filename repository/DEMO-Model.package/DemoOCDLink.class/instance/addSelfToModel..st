adding
addSelfToModel: aModel
	(aModel isMemberOf: OCDViewModel)
		ifTrue: [ aModel addOCDLink: self ]