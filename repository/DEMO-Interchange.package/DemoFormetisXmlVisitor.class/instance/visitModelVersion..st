visiting - model
visitModelVersion: anElement
	model := DemoModel new.
	references at: anElement put: model.
	modelObject := model