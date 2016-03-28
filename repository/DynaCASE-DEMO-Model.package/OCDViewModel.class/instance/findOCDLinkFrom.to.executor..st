accessing
findOCDLinkFrom: aFromModel to: aToModel executor: isExecutorLink
	^ ocdLinks detect: [ :each | (each source = aFromModel and: each target = aToModel) and: each isExecutorLink = isExecutorLink ] ifNone: [ ^ nil ]