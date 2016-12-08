accessing
linesFor: anUuid
	^ lines at: anUuid ifAbsent: [ nil ]