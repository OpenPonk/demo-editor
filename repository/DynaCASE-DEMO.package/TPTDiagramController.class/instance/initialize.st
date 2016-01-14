initialization
initialize
	super initialize.
	trans := OrderedCollection new.
	prods := OrderedCollection new.
	transCol := (RTBox new
		borderColor: Color black;
		color: (Color white alpha: 0)) element updateEdgesOFF.
	prodsCol := (RTBox new
		borderColor: Color black;
		color: (Color white alpha: 0)) element updateEdgesOFF.
	tableBox := (RTBox new color: (Color white alpha: 0)) element updateEdgesOFF