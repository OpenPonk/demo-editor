accessing
expires
	^ (DateAndTime fromString: ((data at: #'.expires') allButFirst: 4)) translateToUTC