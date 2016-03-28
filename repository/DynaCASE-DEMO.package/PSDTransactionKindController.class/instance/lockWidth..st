as yet unclassified
lockWidth: lock
	lock 
		ifTrue: [ 
			| sizes |
			sizes := diagramController model getSizeFor: model uuid.
			sizes at: 1 put: figure extent.
			diagramController model saveSize: sizes for: model uuid.
			diagramController model lockTransSize: model uuid ]
		ifFalse: [ diagramController model unlockTransSize: model uuid ]