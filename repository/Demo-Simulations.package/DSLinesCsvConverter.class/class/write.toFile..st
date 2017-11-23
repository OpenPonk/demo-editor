as yet unclassified
write: aLinesAssignment toFile: aFile
	aFile writeStreamDo: [ :stream | self write: aLinesAssignment toStream: stream ]