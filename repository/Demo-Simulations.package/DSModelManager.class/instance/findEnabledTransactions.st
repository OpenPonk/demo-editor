as yet unclassified
findEnabledTransactions
	"Find all transactions that are enabled from outside (have incoming causal link to request without a defined source)"

	^ self model causalLinks
		select:
			[ :each | each sourceTransaction isNil and: [ each destinationAct type = DemoFactType request ] ]
		thenCollect: [ :each | each destinationTransaction ]