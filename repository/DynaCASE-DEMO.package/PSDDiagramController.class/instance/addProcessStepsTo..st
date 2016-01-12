userinterface
addProcessStepsTo: aController
	| leftNames rightNames |
	
	leftNames := #('rq' 'pr').
	rightNames := #('st' 'ac' 'dn' ).
	
	leftNames do: [ :eachText |
		aController processSteps add: (PSDAct new name: eachText).
		aController processSteps add: (PSDAct new name: eachText; isUpper: false).
		aController processSteps add: (PSDFact new name: eachText).
		aController processSteps add: (PSDFact new name: eachText; isUpper: false).
		].
	
	aController processSteps add: (PSDAct new isProductionAct: true; isUpper: false).
	
	rightNames do: [ :eachText |
		aController processSteps add: (PSDAct new name: eachText).
		aController processSteps add: (PSDAct new name: eachText; isUpper: false).
		aController processSteps add: (PSDFact new name: eachText).
		aController processSteps add: (PSDFact new name: eachText; isUpper: false).
		].
	
	aController processSteps do: [ :each | 
		each diagramController: self.
		self controllers add: each.
		self diagramController figureAdded: (each figure).
		each transactionController: aController ].