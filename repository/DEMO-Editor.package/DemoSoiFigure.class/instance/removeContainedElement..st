as yet unclassified
removeContainedElement: aFigure
	containedElements remove: aFigure.
	aFigure container: nil