accessing
inactiveIcon
	| c |
	c := (Form extent: 40 @ 40 depth: 32) fillColor: DSActionColors disabledColor.
	self icon displayOn: c at: 0 @ 0 rule: Form blend.
	^ c