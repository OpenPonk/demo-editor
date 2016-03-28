tests-as yet unclassified
testPrintableID
	| compositeActorRole |
	compositeActorRole := CompositeActorRole new.
	compositeActorRole id: 5.
	self assert: (compositeActorRole printableID) equals: 'CA5' 