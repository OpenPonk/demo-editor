as yet unclassified
defaultSpec
	^ SpecColumnLayout composed
		add: #textEditor;
		newRow: [ :r | 
			r
				add: #discardButton;
				add: #saveButton ]
			height: self toolbarHeight;
		yourself