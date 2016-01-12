as yet unclassified
createControllers
	| firstLevelControllers |
	firstLevelControllers := OrderedCollection new.
	
	self model elementaryActorRoles
		do:
			[ :each | 
			firstLevelControllers add: (self addModelElement: each).
			firstLevelControllers last figure @ (RTDraggableSnapToGrid new gridSize: gridSize) ].
		
	self model compositeActorRoles
		do:
			[ :compActorRole | 
			compActorRole elements do: [ :subRole | self addModelElement: subRole ].
			firstLevelControllers add: (self addModelElement: compActorRole).
			firstLevelControllers last figure
				@
					(DCRTDraggableSnapToGrid new
						gridSize: gridSize;
						shift: (gridSize - 9) @ (gridSize - 18)) ].
					
	self model transactionKinds
		do:
			[ :each | 
			firstLevelControllers add: (self addModelElement: each).
			firstLevelControllers last figure @ (RTDraggableSnapToGrid new gridSize: gridSize).
			self createLinksForTransKind: firstLevelControllers last ].
		
	^ firstLevelControllers 