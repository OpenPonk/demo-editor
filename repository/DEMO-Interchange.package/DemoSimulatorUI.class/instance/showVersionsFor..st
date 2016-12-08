actions
showVersionsFor: aModel
	aModel
		ifNil: [ versionsList items: #() ]
		ifNotNil: [ versionsList items: (self loadVersionsFor: aModel) ]