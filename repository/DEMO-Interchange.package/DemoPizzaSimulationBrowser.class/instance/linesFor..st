accessing
linesFor: aModel
	^ self storage
		linesFor: aModel uuid
		ifAbsentPut: [ DSLinesCsvConverter new fromString: self pizzaPlay linesCsv ]