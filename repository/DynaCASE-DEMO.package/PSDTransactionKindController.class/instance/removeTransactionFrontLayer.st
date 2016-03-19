as yet unclassified
removeTransactionFrontLayer
	transactionFrontLayer
		ifNotNil: [ transactionFrontLayer view
				ifNotNil: [ transactionFrontLayer remove.
					transactionFrontLayer := nil ] ]