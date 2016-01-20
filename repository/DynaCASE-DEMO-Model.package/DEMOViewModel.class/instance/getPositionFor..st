positioning
getPositionFor: elementDcID
	^ elementPositions at: elementDcID ifAbsent: [ 0 @ 0 ]