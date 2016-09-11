as yet unclassified
completedIcon
	| c |
	c := (Form extent: 40 @ 40 depth: 32) fillColor: (Color fromHexString: 'b8b8ff').
	self icon displayOn: c at: 0 @ 0 rule: Form blend.
	^ c