as yet unclassified
canBeEnabled
	^ (self previousButton ifNil: [ true ] ifNotNil: #isCompleted)
		and: [ self incomingEdges allSatisfy: [ :each | each from isCompleted ] ]