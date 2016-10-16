visiting
visitActorRole: anElement
	| role |
	role := DemoActorRole new
		uuid: (self uuidFor: anElement);
		demoId: (self demoIdFor: anElement);
		name: (anElement stringAt: 'Label');
		isComposite: (anElement booleanAt: 'IsComposite');
		isSelfGenerating: (anElement booleanAt: 'IsSelfGenerating').
	model add: role.
	elements at: (self uuidFor: anElement) put: role