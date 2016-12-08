accessing
scriptFor: anUuid
	^ script at: anUuid ifAbsent: [ nil ]