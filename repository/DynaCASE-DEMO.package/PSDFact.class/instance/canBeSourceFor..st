testing
canBeSourceFor: aController
	^ ((isUpper not) and: (aController isMemberOf: PSDInitiationLinkController))
		or: (isUpper and: (aController isMemberOf: PSDWaitingLinkController))