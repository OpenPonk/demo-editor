as yet unclassified
incomingGuardEnabled
	self isEnabled | self isCompleted
		ifTrue: [ ^ self ].
	self canBeEnabled
		ifTrue: [ ^ self enabled ]