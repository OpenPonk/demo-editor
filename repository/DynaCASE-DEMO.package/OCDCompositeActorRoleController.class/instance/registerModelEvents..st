as yet unclassified
registerModelEvents: aModel
	super registerModelEvents: aModel.
	aModel
		when: DCElementRemoved
		do: [ :event | subElements removeAllSuchThat: [ :each | each model = event element ] ]