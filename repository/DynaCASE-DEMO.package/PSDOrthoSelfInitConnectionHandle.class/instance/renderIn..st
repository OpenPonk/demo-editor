as yet unclassified
renderIn: aView
	element := self shape elementOn: edge.
	aView add: element.
	element translateTo: self calculatePosition.
	"element @ RTDraggableSnapToGrid center."
	"element @ DCRTRoundedDraggable."
	element @ DCRTDraggableHorizontally.
	element addConnectedEdge: edge.
	element trachelShape
		addCallback:
			(TRTranslationCallback
				block:
					[ :shape :step | 
					handler middle: edge to position x - element position x.
					edge announcer announce: DCRTHandleMoved new ])