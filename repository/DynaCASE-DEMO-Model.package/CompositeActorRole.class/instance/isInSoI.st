as yet unclassified
isInSoI
	elements ifEmpty: [ ^ false ].
	^ elements first isInSoI.