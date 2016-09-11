as yet unclassified
exampleConditions
| v container box1 box2 f box3 box4 |
v := RTView new.

box1 := DSBox new.
box1 label: 'Order', String cr, 'completion'.
box1 @ DCRTResizableHorizontallySnapToGrid.
box1 @ RTDraggable.
box1 shape width: 430.


v add: box1.

RTDirectLayoutTranslator new
	translateTopLeftOf: box1 to: 0@0.

box2 := DSBox new.
box2 label: 'Order', String cr, 'payment'.
box2 @ DCRTResizableHorizontallySnapToGrid.
box2 @ RTDraggable.
box2 shape width: 310.

v add: box2.

RTDirectLayoutTranslator new
	translateTopLeftOf: box2 to: 40 @ 80.

box3 := DSBox new.
box3 label: 'Order', String cr, 'baking'.
box3 @ DCRTResizableHorizontallySnapToGrid.
box3 @ RTDraggable.
box3 shape width: 310.

v add: box3.

RTDirectLayoutTranslator new
	translateTopLeftOf: box3 to: 80 @ 160.


box4 := DSBox new.
box4 label: 'Order', String cr, 'delivery'.
box4 @ DCRTResizableHorizontallySnapToGrid.
box4 @ RTDraggable.
box4 shape width: 390.

v add: box4.

RTDirectLayoutTranslator new
	translateTopLeftOf: box4 to: 80 @ 240.

f := DSFiguresFactory new.

box1 buttons first enabled.

v add: (f causalLinkFrom: box1 buttons first to: box2 buttons first).
v add: (f causalLinkFrom: box1 buttons first to: box3 buttons first).
v add: (f causalLinkFrom: box1 buttons first to: box4 buttons first).
v add: (f conditionalLinkFrom: box2 buttons fifth to: box1 buttons third).
v add: (f conditionalLinkFrom: box2 buttons second to: box3 buttons first).
v add: (f conditionalLinkFrom: box3 buttons fifth to: box4 buttons third).

(v @ RTEmptyViewContextInteraction @ RTZoomableView @ RTDraggableView) inspect.