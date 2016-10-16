visiting
visitModel: anElement
	model := DemoModel new.
	model uuid: (self uuidFor: anElement).
	model name: (anElement stringAt: #ExternalId).