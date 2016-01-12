initialization
initialize
	super initialize.
	dcName := 'New transaction kind'.
	ocdPosition := 0 @ 0.
	psdPosition := 0 @ 0.
	
	initiationLinks := OrderedCollection new.
	waitingLinks :=	OrderedCollection new.