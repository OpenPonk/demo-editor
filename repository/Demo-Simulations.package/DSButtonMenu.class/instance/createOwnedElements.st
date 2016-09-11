as yet unclassified
createOwnedElements
	| btn |
	btn := DSButton basicNew
		model: #dc;
		initialize.
	btn enabled.
	self add: btn.
	(RTConstraint on: btn background: self)
		bottom;
		outer;
		stick