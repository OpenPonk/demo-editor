as yet unclassified
dragEnter: anEvent
	(self accepts: anEvent draggedElement)
		ifTrue: [ self beAccepting: anEvent element ]
		ifFalse: [ self beDenying: anEvent element ]