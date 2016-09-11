as yet unclassified
completed
	self removeAttributeAt: #hover ifAbsent: [  ].
	self shape form: self completedIcon.
	self
		update;
		signalUpdate.
	self announce: DSCompleted new.
	(self owner buttons indexOf: self) = 2
		ifTrue: [ self owner labelCompleted ].
	self nextButton ifNotNil: [ :b | b incomingGuardEnabled ].
	self outgoingEdges do: [ :each | each to incomingGuardEnabled ]