as yet unclassified
examplePeople
	| v p1 p2 f c |
	v := RTView new.

p1 := DSPerson new.
p1 label: 'Martin'.
p2 := DSPerson new.
p2 label: 'Robert'.

v add: p1.
v add: p2.

p2 translateBy: 320 @ 0.

f := DSFiguresFactory new.
v add: (f communicationLinkFrom: p1 to: p2).

c := DSCloud new.
v add: c.
c icon: DemoSimulationIcons requestIcon.
c label: 'yoloo'.

{ p1 . p2. c } do: #action.

c translateBy: 160 @ 0.

(v @ RTEmptyViewContextInteraction) inspect.