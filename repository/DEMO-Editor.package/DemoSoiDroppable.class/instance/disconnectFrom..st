as yet unclassified
disconnectFrom: anEvent
	anEvent draggedElement container isElement
		ifTrue: [ anEvent draggedElement container
				removeContainedElement: anEvent draggedElement ]