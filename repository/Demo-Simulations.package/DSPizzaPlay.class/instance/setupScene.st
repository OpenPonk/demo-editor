as yet unclassified
setupScene
|bg|
f := DSFiguresFactory new.

v := RTView new.
v canvas color: (Color fromHexString: 'f1f1f1').

tCom := DSTransaction new.
tCom model: 'Order completion'.

tPay := DSTransaction new.
tPay flipped.
tPay model: 'Order payment'.

tBake := DSTransaction new.
tBake model: 'Order baking'.

v add: tCom; add: tPay; add: tBake.

tPay translateBy: 0 @ 150.
tBake translateBy: 320 @ (150 * 2).

rCustomer := DSRail new model: ''.
rCustomer addSpot: tCom initiatorSpot.
rCustomer addSpot: tPay executorSpot.
v add: rCustomer.

rCompleter := DSRail new model: ''.
rCompleter addSpot: tCom executorSpot.
"rCompleter addSpot: tPay initiatorSpot."
rCompleter addSpot: tBake initiatorSpot.
v add: rCompleter.

rBaker := DSRail new model: ''.
rBaker addSpot: tBake executorSpot.
v add: rBaker.


f
	blurTransaction: tCom;
	blurTransaction: tPay;
	blurTransaction: tBake.


"rCustomer ownedElements first model: 'Customer'; update."
"rCompleter ownedElements first model: 'Order completer'; update."
"rBaker ownedElements first model: 'Baker'; update."

martin := DSActor new model: #Martin.

"v add: martin."
"tCom initiatorSpot actor: martin."

robert := DSActor new model: #Robert.
"v add: robert.
tCom executorSpot actor: robert."

marek := DSActor new model: #Marek.
"v add: marek."
"marek moveToSpot: tBake executorSpot."



box1 := DSBox new.
box1 model: 'Order', String cr, 'completion'.
box1 @ DCRTResizableHorizontallySnapToGrid.
box1 @ RTDraggable.
box1 shape width: 520.

v add: box1.


bg := RTBox new
	width: 800;
	height: 300;
	color: (Color fromHexString: 'd4d4d4');
	element.

"v add: bg.
bg pushBack."

bg translateTo: (250 @ 550).

m := DSEventManager new.
m connectControlBox: box1 with: tCom.

RTDirectLayoutTranslator new
	translateTopLeftOf: box1 to: 0@450.

box2 := DSBox new.
box2 model: 'Order', String cr, 'payment'.
box2 @ DCRTResizableHorizontallySnapToGrid.
box2 @ RTDraggable.
box2 shape width: 310.

v add: box2.
m connectControlBox: box2 with: tPay.

RTDirectLayoutTranslator new
	translateTopLeftOf: box2 to: 80 @ (450 + 80).

box3 := DSBox new.
box3 model: 'Order', String cr, 'baking'.
box3 @ DCRTResizableHorizontallySnapToGrid.
box3 @ RTDraggable.
box3 shape width: 360.

v add: box3.
m connectControlBox: box3 with: tBake.

RTDirectLayoutTranslator new
	translateTopLeftOf: box3 to: 80 @ (450 + 160).

"box1 buttons first enabled."

"
DSPizzaPlay run.
"


v add: (f causalLinkFrom: box1 buttons first to: box2 buttons first).
v add: (f causalLinkFrom: box1 buttons first to: box3 buttons first).
v add: (f conditionalLinkFrom: box2 buttons fifth to: box1 buttons third).
v add: (f conditionalLinkFrom: box2 buttons second to: box3 buttons first).
v add: (f conditionalLinkFrom: box3 buttons last to: box1 buttons third).

v pushBackEdges.

(v @ RTEmptyViewContextInteraction @ RTZoomableView @ RTDraggableView).
v canvas camera scale: 0.8.
v