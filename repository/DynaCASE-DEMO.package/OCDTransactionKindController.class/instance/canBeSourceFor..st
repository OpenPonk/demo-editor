as yet unclassified
canBeSourceFor: aController
	^ ((aController isMemberOf: OCDExecutorLinkController)
		and: self model executorRole isNil)
		or:
			((aController isMemberOf: OCDInitiatorLinkController)
				and: self model initiatorRole isNil)