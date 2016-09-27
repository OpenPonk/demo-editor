as yet unclassified
addAsTargetFor: aController
	(aController isKindOf: DemoScopeOfInterestController)
		ifTrue: [ aController attachTo: self diagramController ]
		ifFalse: [ super addAsTargetFor: aController ]