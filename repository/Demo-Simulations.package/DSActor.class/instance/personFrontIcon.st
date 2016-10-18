accessing - icons
personFrontIcon
	| selector |
	selector := #personFrontIcon.
	self model = #Martin
		ifTrue: [ selector := #martinFrontIcon ].
	self model = #Marek
		ifTrue: [ selector := #marekFrontIcon ].
	^ (DemoSimulationIcons perform: selector) scaledToSize: 52 @ 123