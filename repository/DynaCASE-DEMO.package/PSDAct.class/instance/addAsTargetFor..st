adding
addAsTargetFor: aController
	self assert: (self canBeTargetFor: aController).
	aController target: self.
	aController diagramController: diagramController.
	aController createModel.
	aController model isInitiation
		ifTrue: [ aController
				isSelfItiating:
					(((isUpper and: name = 'rq')
						and: (aController source isUpper not and: aController source name = 'rq'))
						and: aController source transactionController = self transactionController) ].
	diagramController controllers add: aController.
	aController attach.
	diagramController model add: aController model.
	self increaseNumberOfConnections.
	aController source increaseNumberOfConnections