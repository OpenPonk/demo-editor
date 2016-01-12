hooks
createFigure
	^ DCRTCallbackBuilder block:
		[ :view |
		| element |
		element := (RTLabel elementOn: (self model dcID, ' - ', self model name)) updateEdgesOFF.
		element ]