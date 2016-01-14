hooks
createModel
	self error.
	^ self model ifNil: [ 
		| newModel newID |
		newModel := self modelClass new.
		newID := newModel getNewID: diagramController model.
		newModel dcID: newID.
		^ newModel ]