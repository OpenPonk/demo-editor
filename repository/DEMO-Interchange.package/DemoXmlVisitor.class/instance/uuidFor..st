utility
uuidFor: anElement
	^ UUID fromString: (anElement attributeAt: #Id)