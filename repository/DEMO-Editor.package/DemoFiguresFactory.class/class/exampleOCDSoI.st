as yet unclassified
exampleOCDSoI
| v outer inner trans soi f |
v := RTView new.

outer := DemoElementaryActorRoleFigure new.
inner := DemoCompositeActorRoleFigure new.

trans := DemoTransactionFigure new.

v add: outer; add: inner; add: trans.

soi := DemoSoiFigure new.
v add: soi.
soi @ DemoSoiDroppable.
soi pushBack.

trans translateTo: (soi encompassingRectangle pointNearestTo: trans position - (50 @ 0)).
"trans borderDraggableOn: soi."

outer translateTo: -300 @ 0.

soi addContainedElement: trans.
soi addContainedElement: inner.

f := DemoFiguresFactory new.
v add: (f initiatorLinkFrom: outer to: trans).
v add: (f executorLinkFrom: trans to: inner).

v inspect