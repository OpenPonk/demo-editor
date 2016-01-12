testing
canBeTargetFor: aController
	^ ((isUpper and: (name = 'rq')) and: (aController isMemberOf: PSDInitiationLinkController))
		or: ((isUpper not) and: (aController isMemberOf: PSDWaitingLinkController))