userinterface
createControllersFromModel
	model transactionKinds
		do: [ :each | trans add: (self addModelElement: each) ].
	model productKinds
		do: [ :each | prods add: (self addModelElement: each) ]