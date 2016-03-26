as yet unclassified
removeActorRoleConnections: anActorRole
	transactionKinds do: [ :transaction |
		(transaction initiatorRole = anActorRole) ifTrue: [ transaction initiatorRole: nil ].
		(transaction executorRole  = anActorRole) ifTrue: [ transaction executorRole: nil ] ]