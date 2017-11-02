instance creation
readFromStream: aStream
	| assignment flat |
	assignment := Dictionary new.
	flat := (NeoCSVReader on: aStream)
		separator: $,;
		skipHeader;
		addField;
		addField;
		addField;
		addField.
	flat
		do: [ :each | 
			| line |
			line := each fourth = 'nil'
				ifTrue: [ nil ]
				ifFalse: [ each fourth ].
			((assignment at: each first ifAbsentPut: [ Dictionary new ])
				at: each second
				ifAbsentPut: [ Dictionary new ]) at: each third put: line ].
	^ assignment