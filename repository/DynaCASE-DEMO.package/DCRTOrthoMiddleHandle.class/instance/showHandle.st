as yet unclassified
showHandle
	isActive
		ifTrue: [ ^ self ].
	handle := PSDOrthoConnectionHandle new on: edge handledWith: self.
	OPRTHandle new on: edge at: nil.
	handle renderIn: edge view.
	edge signalUpdate.
	isActive := true