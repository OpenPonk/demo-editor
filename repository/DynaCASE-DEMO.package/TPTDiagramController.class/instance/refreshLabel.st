userinterface
refreshLabel
	
	(tableBox attributes at: #RTLabelledLabel) text: self model name.
	
	self view signalUpdate.