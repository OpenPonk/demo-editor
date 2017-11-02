api - retrieving
modelForVersion: aVersion
	fullModels ifNil: [ fullModels := Dictionary new ].
	^ fullModels
		at: aVersion id
		ifAbsentPut: [ | modelXml model |
			modelXml := api versionXmlFor: aVersion.
			model := DemoXmlInterchange readStream: modelXml prettyPrinted readStream ]