adding
add: anObject
	(anObject class = TransactionKind) ifTrue: [ self addTransactionKind: anObject ].
	"(anObject class = ProductKind) ifTrue: [ self addTransactionKind: anObject ]"
	self elements add: anObject.
	anObject addedTo: self.
	anObject when: DCElementChanged do: [ self changed ].
	self announce: (DCElementAdded element: anObject).
	self changed