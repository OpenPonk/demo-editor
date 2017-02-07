as yet unclassified
renderIn: aView
	element := self shape elementOn: edge.
	aView add: element.
	element translateTo: self calculatePosition.
	"element @ RTDraggableSnapToGrid center."
	"element @ DCRTRoundedDraggable."
	element @ DCRTDraggableVertically.
	element addConnectedEdge: edge.
	element trachelShape
		addCallback:
			(TRTranslationCallback
				block:
					[ :shape :step | 
					handler middle: element position y.
					edge announcer announce: OPRTHandleMoved new ])