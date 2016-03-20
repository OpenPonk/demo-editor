removing
removeHandle
	isActive
		ifFalse: [ ^ self ].
	handle remove.
	handle := nil.
	edge signalUpdate.
	isActive := false