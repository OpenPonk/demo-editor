as yet unclassified
noGlow
	glow ifNil: [ ^ self ].
	glow remove.
	glow := nil.
	self view signalUpdate