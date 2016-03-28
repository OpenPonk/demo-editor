positioning
getSizeFor: elementUUID
	^ elementSizes at: elementUUID ifAbsent: [ 40 @ 40 ]