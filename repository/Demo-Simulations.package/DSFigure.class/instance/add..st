as yet unclassified
add: anElement
	ownedElements add: anElement.
	(anElement isKindOf: DSFigure)
		ifTrue: [ anElement owner: self ]