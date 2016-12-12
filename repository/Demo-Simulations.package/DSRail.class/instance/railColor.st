accessing
railColor
	^ railColor ifNil: [ railColor := Color fromHexString: 'd0d0d0' ]