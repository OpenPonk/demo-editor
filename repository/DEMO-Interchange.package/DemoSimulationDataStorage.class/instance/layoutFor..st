accessing
layoutFor: anUuid
	^ layout at: anUuid ifAbsent: [ nil ]