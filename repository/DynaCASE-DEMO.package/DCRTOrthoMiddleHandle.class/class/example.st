example
example
	| v es e handle |
	v := RTView new.
	es := RTEllipse new
		color: Color black;
		size: 20;
		elementsOn: #(1 2).
	handle := DCRTOrthoMiddleHandle new.
	e := DCRTStyledMultiLine new
		withContinuousRectangleAttachPoint;
		color: Color red;
		head: RTFilledArrow;
		block: handle getBlockProducingPath;
		edgeFrom: es first to: es second.
	v
		addAll: es;
		add: e.
	es @ RTDraggable.
	(es at: 1) translateTo: 0 @ 0.
	(es at: 2) translateTo: 100 @ 200.
	e @ handle.
	v open