events - registering
registerModelEvents: aModel
	super registerModelEvents: aModel.
	aModel when: OPElementChanged do: [ :event | self refreshLabel ]