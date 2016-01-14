hooks
createFigure
	^ DCRTCallbackBuilder
		block:
			[ :view | 
			| element |
			element := (RTLabel elementOn: self generateLabelText) updateEdgesOFF.
			element ]