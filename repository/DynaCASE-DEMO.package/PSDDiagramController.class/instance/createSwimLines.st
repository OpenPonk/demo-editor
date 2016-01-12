userinterface
createSwimLines
	| swimLine |
	swimLine := RTBox new
		extent: PSDDiagramController swimlineWidth @ PSDDiagramController swimlineHeight;
		color: Color transparent;
		borderColor: Color lightGray.
	transControllers
		do: [ :each | 
			swimLines add: swimLine element.
			swimLines add: swimLine element].
	view addAll: swimLines.
	swimLines do: [ :each | each pushBack ]