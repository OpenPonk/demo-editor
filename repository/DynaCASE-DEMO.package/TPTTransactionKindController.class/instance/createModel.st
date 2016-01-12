hooks
createModel
	^ self model ifNil: [ 
		| newModel newId |
		newModel := self modelClass new.
		newId := (self diagramController model transactionKinds size).
		newModel dcID: 'T', newId asString.
		newModel
		 ]
	

