as yet unclassified
createControllersFromModel
	transControllers := OrderedCollection new.
	self model transactionKinds
		do:
			[ :each | 
			| transController |
			transController := self addModelElement: each.
			self addProcessStepsTo: transController.
			transControllers add: transController ]