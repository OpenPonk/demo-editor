as yet unclassified
addSoI
	| controller |
	controller := OCDScopeOfInterest new.
	controller diagramController: self.
	self controllers add: controller.
	controller model: model.
	controller attach.
	controller figure
		addCallback:
			(TRTranslationCallback
				block: [ :shape :step | self model soiPosition: controller figure trachelShape position ]).
	controller figure
		addCallback: (TRExtentCallback block: [ :shape :ratio | self model soiSize: controller figure trachelShape extent ]).
	"controller figure
		@
			(DCRTDraggableSnapToGrid new
				gridSize: DEMOConfig OCDGridSize;
				shift: (DEMOConfig OCDGridSize / 4) @ (DEMOConfig OCDGridSize / 4))."
	controller figure
		@
			(DCRTResizableSnapToGrid new
				cellSize: DEMOConfig OCDGridSize @ DEMOConfig OCDGridSize;
				minSize: DEMOConfig OCDGridSize @ DEMOConfig OCDGridSize).
	controller figure trachelShape translateTo: self model soiPosition.
	controller figure trachelShape pushBack.
	self view signalUpdate