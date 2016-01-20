as yet unclassified
createControllersFromModel
	transControllers := OrderedCollection new.
	self model transactionKinds
		select: [ :each | each initiatorRole isNotNil and: each executorRole isNotNil ]
		thenDo:
			[ :each | 
			| transController |
			transController := self addModelElement: each.
			self addProcessStepsTo: transController.
			transControllers add: transController ]