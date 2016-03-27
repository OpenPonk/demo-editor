positioning
getPositionFor: elementDcID
	^ elementPositions at: elementDcID ifAbsent: [ Array braceWith: (0 @ 0) with: (0 @ 0) ]