userinterface
createControllersFromModel
	model transactionKinds do: [ :each | self addModelElement: each ].
	model productKinds do: [ :each | self addModelElement: each ]