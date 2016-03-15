as yet unclassified
lockWidth: lock
	lock 
		ifTrue: [ 
			| sizes |
			sizes := diagramController model getSizeFor: model dcID.
			sizes at: 1 put: figure extent.
			diagramController model saveSize: sizes for: model dcID.
			diagramController model lockTransSize: model dcID ]
		ifFalse: [ diagramController model unlockTransSize: model dcID ]