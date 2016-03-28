accessing
relatedElements
	correspondingProductKind
		ifNil: [ ^ super relatedElements ]
		ifNotNil: [ ^ super relatedElements
				add: correspondingProductKind;
				yourself ]