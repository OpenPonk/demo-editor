testing
canBeTargetFor: aController
	^ (aController isKindOf: DemoPSDLinkController) and: [ self figure isFact not ]