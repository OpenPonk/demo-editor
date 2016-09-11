as yet unclassified
currentActionIcon
	| c |
	c := (Form extent: 35 @ 35 depth: 32) fillColor: (Color fromHexString: 'f5f502').
	self currentIcon displayOn: c at: 0 @ 0 rule: Form blend.
	^ c