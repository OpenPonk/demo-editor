as yet unclassified
updateFrom: aModel
	self model: aModel.
	self ownedElements first
		model: aModel;
		update.
	self signalUpdate