initialization
initialize
	super initialize.
	
	transactionKinds := Set new.
	aggregateTransactionKinds := Set new.
	elementaryActorRoles := Set new.
	compositeActorRoles := Set new.
	productKinds := Set new.
	informationLinks := OrderedCollection new.
	processLinks := OrderedCollection new