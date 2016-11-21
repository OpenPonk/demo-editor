exporting
exportLines
	(UIManager default fileSave: 'Choose csv file to save the lines to' extensions: #(csv))
		ifNil: [ self inform: 'Saving canceled.' ]
		ifNotNil: [ :file | 
			DSLinesStorage write: actorLines toFile: file.
			self inform: 'Lines saved.' ]