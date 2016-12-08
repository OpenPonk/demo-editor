instance creation
toString: aCollection
	^ String streamContents: [ :stream | self write: aCollection toStream: stream ]