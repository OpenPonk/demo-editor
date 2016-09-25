ui hooks
removeFromView: aFigure
	| removedController |
	removedController := self controllerForFigure: aFigure.
	removedController model
		ifNil: [ self controllers remove: removedController.
			removedController remove.
			^ self ].
	super removeFromView: aFigure