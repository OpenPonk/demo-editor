hooks
refreshFigure
(figure attributeAt: #RTLabelledLabel) text: self model name.
(figure attributeAt: #RTLabelledLabel) pushFront.
self diagramController view signalUpdate 