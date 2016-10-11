as yet unclassified
createController: aModel
	| controller mapping |
	mapping := {DemoActorRole
		-> [ :el | 
			el isComposite
				ifTrue: [ DemoCompositeActorRoleController ]
				ifFalse: [ DemoElementaryActorRoleController ] ].
	DemoTransactionKind
		-> [ :el | 
			el isAggregate
				ifTrue: [ DemoAggregateTransactionKindController ]
				ifFalse: [ DemoTransactionKindController ] ]}.
	controller := ((mapping asDictionary at: aModel class) value: aModel) new.
	controller model: aModel.
	^ controller