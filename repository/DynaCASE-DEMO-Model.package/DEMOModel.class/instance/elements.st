accessing
elements
	elements := OrderedCollection new.
	elements addAll: transactionKinds.
	elements addAll: elementaryActorRoles.
	elements addAll: compositeActorRoles.
	elements addAll: productKinds.
	^ elements 