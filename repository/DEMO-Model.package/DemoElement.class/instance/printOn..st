as yet unclassified
printOn: aStream
	super printOn: aStream.
	self demoId
		ifNotNil: [ aStream
				<< '(#';
				<< self printDemoId;
				<< ')' ]