as yet unclassified
typeColorFor: aType
	^ self typeColors at: aType ifAbsent: [ Color black ]