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
			| roleController |
			roleController := self addModelElement: compActorRole.
			firstLevelControllers add: roleController.
			compActorRole elements
				do:
					[ :subRole | 
					roleController subElements add: (self addModelElement: subRole) ].
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