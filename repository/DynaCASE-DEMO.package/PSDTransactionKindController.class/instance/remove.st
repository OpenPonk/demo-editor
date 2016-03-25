as yet unclassified
remove
	processSteps
		select: [ :each | diagramController controllers includes: each ]
		thenDo: [ :each | 
			each remove.
			diagramController controllers remove: each ].
	super remove.
	diagramController transControllers remove: self