ids
moveTransactionUp: aTransModel
	transactionKinds
		detect: [ :each | each id = (aTransModel id - 1) ]
		ifFound: [ :lower | 
			lower id: aTransModel id.
			aTransModel id: aTransModel id - 1 ]
		ifNone: [ aTransModel id = 0
				ifFalse: [ aTransModel id: aTransModel id - 1 ] ]