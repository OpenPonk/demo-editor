as yet unclassified
exampleCombined
| v p1 p2 f c box1 box2 box3 box4 |
v := RTView new.

p1 := DSPerson new.
p1 label: 'Martin'.
p2 := DSPerson new.
p2 label: 'Robert'.

v add: p1.
v add: p2.

f := DSFiguresFactory new.
v add: (f communicationLinkFrom: p1 to: p2).
v pushBackEdges.

c := DSCloud new.
v add: c.
"c icon: DemoSimulationIcons requestIcon.
c label: 'Order completion'."

"{ p1 . p2. c } do: #action."

p1 translateBy: 0 @ -100.
p2 translateBy: 320 @ -100.
c translateBy: 160 @ -100.


box1 := DSBox new.
box1 label: 'Order', String cr, 'completion'.
box1 @ DCRTResizableHorizontallySnapToGrid.
box1 @ RTDraggable.
box1 shape width: 430.

c label: (box1 label copyReplaceAll: String cr with: ' ').

box1 buttons do: [:each | 
	each when: DSHover do: [ :evt |
		c icon: each icon.
		{ p1 . p2 . c } do: #action.
	].
	each when: DSCompleted do: [ :evt |
		c icon: each icon.
		{ p1 . p2 . c } do: #noAction.
	].
	each when: DSEnabled do: [ :evt |
		c icon: ((each previousButton ifNil: [ box1 buttons first ]) icon).
		{ p1 . p2 . c } do: #noAction.
	].
].


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