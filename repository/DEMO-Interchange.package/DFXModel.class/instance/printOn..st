printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< '(''';
		<< label;
		<< ''',';
		<< id asString;
		<< ')'