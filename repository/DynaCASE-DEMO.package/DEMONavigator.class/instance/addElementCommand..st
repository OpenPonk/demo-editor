as yet unclassified
addElementCommand: anElementModel
	| diagramController elController |
	diagramController := self workbench selectedDiagramController.
	diagramController ifNil: [ ^ self ].
	diagramController controllers
		detect: [ :each | each model = anElementModel ]
		ifNone:
			[ [ elController := diagramController createController: anElementModel ]
				on: KeyNotFound
				do: [ ^ self ].
			diagramController addAsTargetFor: elController ]