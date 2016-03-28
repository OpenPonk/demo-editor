as yet unclassified
createLinksForTransKind: aTranKind
	| execLinkContr initLinkContr execRole initRole |

	aTranKind model executorRole
		ifNotNil:
			[ execRole := self controllerForModel: aTranKind model executorRole.
			execLinkContr := OCDExecutorLinkController new.
			execLinkContr model: (model findOCDLinkFrom: aTranKind model to: aTranKind model executorRole executor: true).
			aTranKind model executorRole: nil. "workaround"
			aTranKind addAsSourceFor: execLinkContr.
			execRole addAsTargetFor: execLinkContr.
			execLinkContr attachFigure ].
		
	aTranKind model initiatorRole
		ifNotNil:
			[ initRole := self controllerForModel: aTranKind model initiatorRole.
			initLinkContr := OCDInitiatorLinkController new.
			initLinkContr model: (model findOCDLinkFrom: aTranKind model to: aTranKind model initiatorRole executor: false).
			aTranKind model initiatorRole: nil. "workaround"
			aTranKind addAsSourceFor: initLinkContr.
			initRole addAsTargetFor: initLinkContr.
			initLinkContr attachFigure ]