as yet unclassified
showHandle
	isActive
		ifTrue: [ ^ self ].
	handle := PSDOrthoSelfInitConnectionHandle new on: edge handledWith: self.
	DCRTHandle new on: edge at: nil.
	handle renderIn: edge view.
	edge signalUpdate.
	isActive := true