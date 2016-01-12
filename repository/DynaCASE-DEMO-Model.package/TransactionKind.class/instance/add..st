adding
add: anObject
	(anObject isMemberOf: ProductKind) ifTrue: [ self correspondingProductKind: anObject ]