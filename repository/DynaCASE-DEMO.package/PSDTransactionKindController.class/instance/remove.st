as yet unclassified
remove
	diagramController controllers removeAll: processSteps.
	processSteps select: [ :each | diagramController controllers includes: each ] thenDo: [ :each | each remove ].
	super remove
	