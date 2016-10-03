utility
uniqueIdFor: anElement
	| sameTypes |
	sameTypes := (elements select: [ :each | each class = anElement class ]) collect: #demoId.
	^ sameTypes ifEmpty: [ 1 ] ifNotEmpty: [ sameTypes max + 1 ]