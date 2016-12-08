accessing
actorsFor: anUuid ifAbsentPut: aBlock
	^ actors at: anUuid ifAbsentPut: aBlock