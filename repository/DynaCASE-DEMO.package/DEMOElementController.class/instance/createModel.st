hooks
createModel
	^ self model ifNil: [ 
		| newModel newID |
		newModel := self modelClass new.
		newID := newModel getNewID: diagramController model.
		newModel id: newID.
		^ newModel ]