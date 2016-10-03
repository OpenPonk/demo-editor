as yet unclassified
dragDrop: anEvent
	(self accepts: anEvent draggedElement)
		ifTrue: [ self disconnectFrom: anEvent.
			anEvent element addContainedElement: anEvent draggedElement ].
	self beNormal: anEvent element