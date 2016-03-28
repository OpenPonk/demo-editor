as yet unclassified
registerModelEvents: aModel
	aModel announcer
		when: DCElementRemoved
		do: [ :event | self diagramController removeControllerOf: event element ]