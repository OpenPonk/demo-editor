testing
hasMappingFor: anObject
	^ {DemoAnnouncableObject}anySatisfy: [ :any | anObject isKindOf: any ]