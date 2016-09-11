as yet unclassified
isEnabled
	^ (self shape form rtValue: self) bits = self enabledIcon bits
		| ((self shape form rtValue: self) bits = self hoverIcon bits)