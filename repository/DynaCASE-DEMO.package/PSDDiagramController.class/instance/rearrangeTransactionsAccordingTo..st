userinterface
rearrangeTransactionsAccordingTo: aFixedTranController
	| tempIndex collidingTransController |
	collidingTransController := transControllers
		detect:
			[ :aController | 
			(aController = aFixedTranController) not
				and: aController figure position y = aFixedTranController figure position y ]
		ifNone: [  ].
	
	aFixedTranController figure position y = 0 ifTrue: [ tempIndex := 0 ] ifFalse: [
	tempIndex := (aFixedTranController figure position y
		/ PSDDiagramController swimlineHeight) ].
		
	collidingTransController
		ifNil: [ aFixedTranController orderIndex: tempIndex ]
		ifNotNil:
			[ collidingTransController orderIndex: aFixedTranController orderIndex.
			aFixedTranController orderIndex: tempIndex.
			self layoutTransControllers ].
	self refreshSwimLines 