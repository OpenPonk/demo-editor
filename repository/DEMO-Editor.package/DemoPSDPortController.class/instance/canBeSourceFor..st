testing
canBeSourceFor: aController
	^ (aController isKindOf: DemoPSDLinkController) and: [ self figure isFact ]