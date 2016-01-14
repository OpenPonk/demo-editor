hooks
createFigure
	^ DCRTCallbackBuilder block:
		[ :view |
		| element |
		element := (RTLabel elementOn: (self model dcID asString, ' - ', self model name)) updateEdgesOFF.
		element ]