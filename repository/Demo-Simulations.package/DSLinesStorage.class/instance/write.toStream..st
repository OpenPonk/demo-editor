as yet unclassified
write: anAssignment toStream: aStream
	| writer |
	writer := NeoCSVWriter on: aStream.
	writer separator: $;.
	writer writeHeader: #(roleName transactionName actName line).
	anAssignment
		keysAndValuesDo: [ :role :transactions | 
			transactions
				keysAndValuesDo: [ :tName :acts | 
					acts
						keysAndValuesDo: [ :aName :line | 
							writer
								nextPut:
									(Array
										with: role
										with: tName
										with: aName
										with: line) ] ] ]