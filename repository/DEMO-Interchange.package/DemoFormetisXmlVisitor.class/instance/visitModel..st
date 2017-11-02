visiting - model
visitModel: anElement
	model := DemoModel new.
	references at: anElement put: model.
	modelObject := model