accessing - icons
personRightSideIcon
	| selector |
	selector := #personSideIcon.
	self model = #Martin
		ifTrue: [ selector := #martinSideIcon ].
	self model = #Marek
		ifTrue: [ selector := #marekSideIcon ].
	^ (DemoSimulationIcons perform: selector) scaledToSize: 64 @ 123