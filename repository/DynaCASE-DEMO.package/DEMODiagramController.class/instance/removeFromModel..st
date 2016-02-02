removing
removeFromModel: aModel
	(aModel isKindOf: ProductKind) ifTrue: [ ^ self ].
	model remove: aModel