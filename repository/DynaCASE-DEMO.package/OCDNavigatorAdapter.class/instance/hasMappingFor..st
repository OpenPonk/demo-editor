testing
hasMappingFor: anObject
	^ {DemoAct.
	DemoActorRole.
	DemoFact.
	DemoFactType.
	DemoOCDModel.
	DemoTransactionKind}anySatisfy: [ :any | anObject isKindOf: any ]