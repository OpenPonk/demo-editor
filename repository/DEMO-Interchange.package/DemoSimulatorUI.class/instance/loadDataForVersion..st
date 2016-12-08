actions
loadDataForVersion: aVersion
	| modelXml |
	modelXml := self xmls
		at: aVersion
		ifAbsentPut: [ self api retrieveModelVersionFor: self versionsList selectedItem ].
	model := DemoXmlInterchange readStream: modelXml prettyPrinted readStream.
	self loadDataFor: model