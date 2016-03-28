tests-visualization
testPrintableID
	| elemActorRole |
	elemActorRole := ElementaryActorRole new.
	elemActorRole id: 5.
	self assert: (elemActorRole printableID) equals: 'A5' 