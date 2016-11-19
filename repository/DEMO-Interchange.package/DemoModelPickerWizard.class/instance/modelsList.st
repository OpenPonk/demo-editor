accessing
modelsList
	^ models collect: [ :each | each label, ' [', each id asString, ']' ]