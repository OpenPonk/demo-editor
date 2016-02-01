as yet unclassified
removeFromView: aFigure
	"Remove a model object represented by aFigure from the model."
	| figureController |
	figureController := self controllerForFigure: aFigure.
	figureController model ifNil: [ figureController remove ] ifNotNil: [ self removeFromModel: figureController model ]