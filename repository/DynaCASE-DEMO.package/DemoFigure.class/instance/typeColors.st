as yet unclassified
typeColors
	^ typeColors
		ifNil: [ typeColors := Dictionary
				with: #performa -> Color red
				with: #informa -> Color green muchDarker
				with: #forma -> Color blue ]