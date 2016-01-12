userinterface
createLinksForTrans: aController
	| tmpLink target source |
	aController model initiationLinks
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
		
	aController model waitingLinks
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