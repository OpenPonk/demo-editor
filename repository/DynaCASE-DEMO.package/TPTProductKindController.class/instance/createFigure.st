hooks
createFigure
	^ OPRTCallbackBuilder
		block:
			[ :view | 
			| element |
			element := (RTLabel elementOn: self generateLabelText) updateEdgesOFF.
			element ]