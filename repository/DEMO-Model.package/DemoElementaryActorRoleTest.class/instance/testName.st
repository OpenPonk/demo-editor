running
testName
	| elementaryActorRole |
	elementaryActorRole := CompositeActorRole new.
	elementaryActorRole id: 5.
	self assert: (elementaryActorRole name) equals: 'CA5' 