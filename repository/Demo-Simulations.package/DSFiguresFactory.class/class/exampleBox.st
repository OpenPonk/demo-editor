as yet unclassified
exampleBox
| v box |
v := RTView new.

box := DSBox new.
box model: 'Order'.

v add: box.
box buttons first enabled.
box buttons second completed.
box buttons third enabled.


box labelCompleted.

(v @ RTEmptyViewContextInteraction @ RTZoomableView @ RTDraggableView) inspect