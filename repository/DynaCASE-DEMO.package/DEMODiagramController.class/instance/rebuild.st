userinterface
rebuild
	controllers := nil.
	self view clean.
	self view canvas shapes copy
		do: [ :each | 
			(each isKindOf: TRCanvasGridShape )
				ifFalse: [ each remove ] ].
	self view canvas fixedShapes copy do: #remove.
	self getRelevantModelElements do: [ :each | self addModelElement: each ]