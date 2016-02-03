as yet unclassified
removeControllerOf: aModelElement
	super removeControllerOf: aModelElement.
	trans removeAllSuchThat: [ :each | each model = aModelElement ].
	prods removeAllSuchThat: [ :each | each model = aModelElement ].
	self layoutElements