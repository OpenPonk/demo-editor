as yet unclassified
example
	^ self
		open: 'Editor'
		loadBlock: [ self sampleContent ]
		saveBlock: [ :text | text inspect ]