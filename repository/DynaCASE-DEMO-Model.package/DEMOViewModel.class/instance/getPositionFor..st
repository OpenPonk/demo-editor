positioning
getPositionFor: elementUUID
	^ elementPositions at: elementUUID ifAbsent: [ 0 @ 0 ]