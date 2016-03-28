as yet unclassified
canBeSourceFor: aController
	^ ((aController isKindOf: OCDInformationLinkController)
		or: (aController isKindOf: OCDExecutorLinkController))
		or: (aController isKindOf: OCDInitiatorLinkController)