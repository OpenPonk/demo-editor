adding
removeSelfFromModel: aModel
	super removeSelfFromModel: aModel.
	aModel removeAggregateTransactionKind: self