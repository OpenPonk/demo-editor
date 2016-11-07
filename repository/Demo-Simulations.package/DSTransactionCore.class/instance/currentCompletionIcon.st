as yet unclassified
currentCompletionIcon
	| c |
	c := (Form extent: 35 @ 35 depth: 32) fillColor: Color green muchDarker.
	self currentIcon displayOn: c at: 0 @ 0 rule: Form blend.
	^ c