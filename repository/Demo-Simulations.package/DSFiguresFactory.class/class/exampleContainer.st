as yet unclassified
exampleContainer
| v container box1 box2 f |
v := RTView new.

container := DSContainer new.

box1 := DSBox new.
box1 model: 'Supply', String cr, 'management'.
box1 @ DCRTResizableHorizontallySnapToGrid.
box1 @ RTDraggable.
box1 shape width: 560.

container addBox: box1.

box2 := DSBox new.
box2 model: 'Supply order', String cr, 'completion'.
box2 @ DCRTResizableHorizontallySnapToGrid.
box2 @ RTDraggable.

container addBox: box2.

v add: container.

box1 buttons first shape width: 20.
box1 buttons first update.

box2 translateBy: 50 @ 150.

f := DSFiguresFactory new.

v add: (f causalLinkFrom: box1 buttons second to: box2 buttons first).
v add: (f conditionalLinkFrom: box2 buttons fifth to: box1 buttons third).

(v @ RTEmptyViewContextInteraction @ RTZoomableView @ RTDraggableView) inspect.