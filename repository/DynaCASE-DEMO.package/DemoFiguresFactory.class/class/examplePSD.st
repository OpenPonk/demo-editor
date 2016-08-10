as yet unclassified
examplePSD
| v t1 t2 f |
v := RTView new.

t1 := DemoPSDTransactionFigure new.
v add: t1.

t2 := DemoPSDTransactionFigure new.
v add: t2.

t2 translateBy: 0 @ 150.

(t1 ports eighth) color: Color black.

(t2 ports first) color: Color red.

f := DemoFiguresFactory new.

v add: (f causalLinkFrom: t1 ports eighth to: t2 ports first).

v add: (f conditionalLinkFrom: t2 ports seventh to: (t1 ports at: 10)).

v inspect