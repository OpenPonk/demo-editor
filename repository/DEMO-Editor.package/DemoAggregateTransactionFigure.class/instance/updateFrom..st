as yet unclassified
updateFrom: aModel
	self ownedElements third
		model: aModel printDemoId;
		update.
	self ownedElements fourth
		model: aModel name;
		update.
	self signalUpdate