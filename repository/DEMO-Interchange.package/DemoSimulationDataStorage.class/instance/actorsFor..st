accessing
actorsFor: anUuid
	^ actors at: anUuid ifAbsent: [ nil ]