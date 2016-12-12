actions
noGlow
	glow ifNil: [ ^ self ].
	glow remove.
	glow := nil.
	self view signalUpdate