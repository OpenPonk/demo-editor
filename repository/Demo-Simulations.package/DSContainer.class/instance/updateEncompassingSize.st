as yet unclassified
updateEncompassingSize
	| bottomRight topLeft |
	topLeft := (ownedElements collect: [ :each | each encompassingRectangle topLeft ]) min.
	bottomRight := (ownedElements
		collect: [ :each | each encompassingRectangle bottomRight ]) max.
	self shape width: bottomRight x - topLeft x.
	self shape height: bottomRight y - topLeft y.
	self trachelShape
		doWithoutCallbacks: [ RTDirectLayoutTranslator new
				translateTopLeftOf: self
				to: ownedElements first encompassingRectangle topLeft ].
	self update