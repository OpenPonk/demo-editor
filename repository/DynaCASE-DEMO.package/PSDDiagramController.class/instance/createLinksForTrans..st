userinterface
createLinksForTrans: aController
	| tmpLink target source |
	(model initiationLinksFor: aController model dcID)
		do:
			[ :each | 
			tmpLink := PSDInitiationLinkController new.
			tmpLink diagramController: self.
			tmpLink model: each.
			source := self findProcessStep: each sourceStep forTransaction: each source isUpper: false isAct: false.
			target := self findProcessStep: each targetStep forTransaction: each target isUpper: true isAct: true.
			tmpLink source: source.
			tmpLink target: target.
			source increaseNumberOfConnections.
			target increaseNumberOfConnections.
			controllers add: tmpLink.
			tmpLink attach ].
		
	(model waitingLinksFor: aController model dcID)
		do:
			[ :each | 
			tmpLink := PSDWaitingLinkController new.
			tmpLink diagramController: self.
			tmpLink model: each.
			source := self findProcessStep: each sourceStep forTransaction: each source isUpper: true isAct: false.
			target := self findProcessStep: each targetStep forTransaction: each target isUpper: false isAct: true.
			tmpLink source: source.
			tmpLink target: target.
			source increaseNumberOfConnections.
			target increaseNumberOfConnections.
			controllers add: tmpLink.
			tmpLink attach ]