as yet unclassified
actor: anActor on: aTransaction says: aLine
	^ anActor position x < aTransaction position x
		ifTrue: [ self leftActor: anActor says: aLine ]
		ifFalse: [ self rightActor: anActor says: aLine ]