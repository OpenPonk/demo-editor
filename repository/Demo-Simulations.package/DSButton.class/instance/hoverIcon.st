as yet unclassified
hoverIcon
	| c |
	c := (Form extent: 40 @ 40 depth: 32) fillColor: (Color fromHexString: 'f5f502').
	self icon displayOn: c at: 0 @ 0 rule: Form blend.
	^ c