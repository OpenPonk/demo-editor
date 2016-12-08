as yet unclassified
toString: anAssignment
	^ String streamContents: [ :stream | self write: anAssignment toStream: stream ]