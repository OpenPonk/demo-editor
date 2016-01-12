as yet unclassified
canBeTargetFor: aController
	(aController isKindOf: OCDLinkController)
		ifTrue:
			[ (aController source isKindOf: OCDTransactionKindController)
				ifTrue: [ ^ true ] ].
	^ false