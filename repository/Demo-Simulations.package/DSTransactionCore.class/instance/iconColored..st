icons
iconColored: aColor
	| c |
	c := (Form extent: 35 @ 35 depth: 32) fillColor: aColor.
	self currentIcon displayOn: c at: 0 @ 0 rule: Form blend.
	^ c