as yet unclassified
manSideIcon
	^ self incomingEdges
		ifEmpty: [ DemoSimulationIcons manSideIcon ]
		ifNotEmpty: [ DemoSimulationIcons manSideIcon flipBy: #horizontal centerAt: 0 @ 0 ]