accessing
linesFor: aModel
	^ self storage
		linesFor: aModel uuid
		ifAbsentPut: [ DSRandomAssignmentGenerator new randomLinesFor: aModel ]