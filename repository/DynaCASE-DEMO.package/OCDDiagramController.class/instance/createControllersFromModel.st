as yet unclassified
createControllersFromModel
	firstLevelControllers := OrderedCollection new.
	self model aggregateTransactionKinds
		do:
			[ :each | 
			firstLevelControllers add: (self addModelElement: each).
			firstLevelControllers last figure
				@ (RTDraggableSnapToGrid new gridSize: DEMOConfig OCDGridSize) ].
	self model elementaryActorRoles
		do:
			[ :each | 
			firstLevelControllers add: (self addModelElement: each).
			firstLevelControllers last figure
				@ (RTDraggableSnapToGrid new gridSize: DEMOConfig OCDGridSize) ].
	self model compositeActorRoles
		do:
			[ :compActorRole | 
			firstLevelControllers add: (self addModelElement: compActorRole).
			compActorRole elements
				do:
					[ :subRole | firstLevelControllers last subElements add: (self addModelElement: subRole) ].
			firstLevelControllers last refreshFigure.
			firstLevelControllers last figure
				@
					(DCRTDraggableSnapToGrid new
						gridSize: DEMOConfig OCDGridSize;
						shift: (DEMOConfig OCDGridSize - 9) @ (DEMOConfig OCDGridSize - 18)) ].
	self model transactionKinds
		do:
			[ :each | 
			firstLevelControllers add: (self addModelElement: each).
			firstLevelControllers last figure
				@ (RTDraggableSnapToGrid new gridSize: DEMOConfig OCDGridSize).
			self createLinksForTransKind: firstLevelControllers last ].
	self model informationLinks do: [ :each | self createInformationLink: each ].
	^ firstLevelControllers