as yet unclassified
inactiveIcon
	| c |
	c := (Form extent: 40 @ 40 depth: 32) fillColor: Color white.
	self icon displayOn: c at: 0 @ 0 rule: Form blend.
	^ c