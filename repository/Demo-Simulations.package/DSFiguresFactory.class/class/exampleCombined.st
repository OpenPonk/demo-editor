as yet unclassified
exampleCombined
| v p1 p2 f c box1 box2 box3 box4 ppc ppc2 ppc3 ppc4 m |
f := DSFiguresFactory new.

v := RTView new.

ppc := f createCommunicationBetween: #Martin1 and: #Robert1 in: v.
ppc translateBy: 0 @ -250.

ppc2 := f createCommunicationBetween: #Martin2 and: #Robert2 in: v.
ppc2 translateBy: 0 @ -100.

ppc3 := f createCommunicationBetween: #Robert1 and: #Peter in: v.
ppc3 third translateBy: 320 @ -250.
ppc3 second translateBy: 350 @ -250.

ppc4 := f createCommunicationBetween: #Robert2 and: #Marek in: v.
ppc4 third translateBy: 320 @ -100.
ppc4 second translateBy: 350 @ -100.

box1 := DSBox new.
box1 model: 'Order', String cr, 'completion'.
box1 @ DCRTResizableHorizontallySnapToGrid.
box1 @ RTDraggable.
box1 shape width: 430.

ppc last label: (box1 label copyReplaceAll: String cr with: ' ').

m := DSEventManager new.
m connectControlBox: box1 with: ppc last.

v add: box1.

RTDirectLayoutTranslator new
	translateTopLeftOf: box1 to: 0@0.

box2 := DSBox new.
box2 model: 'Order', String cr, 'payment'.
box2 @ DCRTResizableHorizontallySnapToGrid.
box2 @ RTDraggable.
box2 shape width: 310.

v add: box2.
m connectControlBox: box2 with: ppc2 last.

RTDirectLayoutTranslator new
	translateTopLeftOf: box2 to: 40 @ 80.

box3 := DSBox new.
box3 model: 'Order', String cr, 'baking'.
box3 @ DCRTResizableHorizontallySnapToGrid.
box3 @ RTDraggable.
box3 shape width: 310.

v add: box3.
m connectControlBox: box3 with: ppc3 last.

RTDirectLayoutTranslator new
	translateTopLeftOf: box3 to: 80 @ 160.


box4 := DSBox new.
box4 model: 'Order', String cr, 'delivery'.
box4 @ DCRTResizableHorizontallySnapToGrid.
box4 @ RTDraggable.
box4 shape width: 390.

v add: box4.
m connectControlBox: box4 with: ppc4 last.

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

(v @ RTEmptyViewContextInteraction @ RTZoomableView @ RTDraggableView).
v canvas camera scale: 0.8.
v inspect.