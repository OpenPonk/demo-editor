as yet unclassified
populateFrom: aPath
	(UIManager default
		chooseFullFileName: 'Choose model XML'
		extensions: #('xml')
		path: aPath
		preview: nil) ifNotNil: [ :aName | self saveFile: aName asFileReference to: #modelXml ].
	(UIManager default
		chooseFullFileName: 'Choose role assignments CSV'
		extensions: #('csv')
		path: aPath
		preview: nil) ifNotNil: [ :aName | self saveFile: aName asFileReference to: #roleAssignmentsCsv ].
	(UIManager default
		chooseFullFileName: 'Choose lines CSV'
		extensions: #('csv')
		path: aPath
		preview: nil) ifNotNil: [ :aName | self saveFile: aName asFileReference to: #linesCsv ]