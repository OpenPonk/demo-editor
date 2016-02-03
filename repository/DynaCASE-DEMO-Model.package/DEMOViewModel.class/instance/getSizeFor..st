positioning
getSizeFor: elementDcID
	^ elementSizes at: elementDcID ifAbsent: [ 40 @ 40 ]