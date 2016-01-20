testing
isInSoI
	elements ifEmpty: [ ^ false ].
	^ elements first isInSoI.