removing
removeSelfFromModel: aModel
	super removeSelfFromModel: aModel.
	aModel removeTransactionKind: self