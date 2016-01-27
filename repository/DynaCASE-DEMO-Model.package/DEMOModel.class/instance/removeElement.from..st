private
removeElement: anElement from: aCollection
	aCollection remove: anElement ifAbsent: [ ^ self ].
	self elementRemoved: anElement