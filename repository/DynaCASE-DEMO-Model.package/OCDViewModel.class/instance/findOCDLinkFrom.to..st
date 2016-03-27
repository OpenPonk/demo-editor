accessing
findOCDLinkFrom: aFromModel to: aToModel
	^ ocdLinks detect: [ :each | each source = aFromModel and: each target = aToModel ]