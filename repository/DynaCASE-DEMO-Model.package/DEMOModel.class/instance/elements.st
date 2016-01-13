accessing
elements
	^ OrderedCollection new
		addAll: transactionKinds;
		addAll: elementaryActorRoles;
		addAll: compositeActorRoles;
		addAll: productKinds