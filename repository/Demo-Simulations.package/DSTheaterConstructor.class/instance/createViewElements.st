as yet unclassified
createViewElements
	| actorRoles transactionKinds normalizer |
	actorRoles := model elements select: [ :each | each isKindOf: DemoActorRole ].
	transactionKinds := model elements
		select: [ :each | each isKindOf: DemoTransactionKind ].
	transactions := transactionKinds collect: [ :each | DSTransaction new model: each ].
	view addAll: transactions.
	RTVerticalLineLayout new
		gapSize: 100;
		on: transactions.
	"RTGridLayout new
		gapSize: 400;
		on: transactions."
	normalizer := RTMultiLinearColorForIdentity new objects: actorRoles.
	rails := OrderedCollection new.
	actorRoles
		do: [ :aRole | 
			| rail |
			rail := DSRail new model: aRole.
			rail railColor: (normalizer rtValue: aRole).
			transactions
				do: [ :each | 
					each model executor = aRole
						ifTrue: [ rail addSpot: each executorSpot ].
					(each model initiators includes: aRole)
						ifTrue: [ rail addSpot: each initiatorSpot ] ].
			rails add: rail ].
	view addAll: rails