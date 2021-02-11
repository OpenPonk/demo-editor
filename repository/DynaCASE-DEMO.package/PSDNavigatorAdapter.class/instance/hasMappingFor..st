testing
hasMappingFor: anObject
	^ {DemoPSDLink.
	DemoPSDModel.
	DemoPSDTransaction}anySatisfy: [ :any | anObject isKindOf: any ]