as yet unclassified
elements
	elements := OrderedCollection new.
	elements addAll: transactionKinds.
	elements addAll: aggregateTransactionKinds.
	elements addAll: elementaryActorRoles.
	elements addAll: compositeActorRoles.
	^ elements 