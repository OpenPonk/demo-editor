hooks
createFigure
	^ DCRTCallbackBuilder
		block: [ :view | 
			| container element |
			container := self createShape.
			element := container elementOn: ''.
			element @ RTDraggable @ DCRTResizable.
			element
				@
					(RTLabelled new
						view: view;
						center;
						color: Color black;
						yourself).
			elements := RTGroup new.
			elements @ RTDraggable.
			element trachelShape
				addCallback: (TRTranslationCallback block: [ :shape :step | elements do: [ :e | e translateBy: step ] ]).
			element ]