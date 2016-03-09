hooks
showHandles
	handles ifNotEmpty: [ ^ self ].
	handles := RTResizableRectangle cornersAndSides
		collect: [ :corner | 
			| handle |
			handle := self createHandle: corner.
			self attachHandle: handle toCorner: corner.
			handle ].
	self connectAllHandles.
	element view addAll: handles.
	element view signalUpdate