as yet unclassified
addSelfToModel: aModel
	(aModel isMemberOf: OCDViewModel)
		ifTrue: [ aModel addOCDLink: self ]