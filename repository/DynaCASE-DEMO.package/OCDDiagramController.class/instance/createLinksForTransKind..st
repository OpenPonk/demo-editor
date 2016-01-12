as yet unclassified
createLinksForTransKind: aTranKind
	| execLinkContr initLinkContr execRole initRole |

	aTranKind model executorRole
		ifNotNil:
			[ execRole := self controllerForModel: aTranKind model executorRole.
			execLinkContr := OCDExecutorLinkController new.
			aTranKind model executorRole: nil. "workaround"
			aTranKind addAsSourceFor: execLinkContr.
			execRole addAsTargetFor: execLinkContr.
			self controllers add: execLinkContr.
			execLinkContr attachFigure ].
		
	aTranKind model initiatorRole
		ifNotNil:
			[ initRole := self controllerForModel: aTranKind model initiatorRole.
			initLinkContr := OCDInitiatorLinkController new.
			aTranKind model initiatorRole: nil. "workaround"
			aTranKind addAsSourceFor: initLinkContr.
			initRole addAsTargetFor: initLinkContr.
			self controllers add: initLinkContr.
			initLinkContr attachFigure ]