as yet unclassified
readFromStream: aStream
	| assignment flat |
	assignment := Dictionary new.
	flat := (NeoCSVReader on: aStream)
		skipHeader;
		addField;
		addField;
		addField;
		addField.
	flat
		do: [ :each | 
			((assignment at: each first ifAbsentPut: [ Dictionary new ])
				at: each second
				ifAbsentPut: [ Dictionary new ]) at: each third put: each fourth ].
	^ assignment