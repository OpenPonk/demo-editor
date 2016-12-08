accessing
scriptFor: anUuid ifAbsentPut: aBlock
	^ script at: anUuid ifAbsent: aBlock