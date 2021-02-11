tests
testName
	| compositeActorRole |
	compositeActorRole := CompositeActorRole new.
	compositeActorRole id: 5.
	self assert: (compositeActorRole name) equals: 'CA5' 