as yet unclassified
addedIn: aView
	rendered
		ifFalse: [ self createOwnedElements.
			rendered := true ].
	super addedIn: aView