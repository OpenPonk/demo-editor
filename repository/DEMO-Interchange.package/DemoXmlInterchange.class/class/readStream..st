reading
readStream: aStream
	| dom modelDom visitor |
	dom := (XMLDOMParser on: aStream)
		nodeFactory: (XMLPluggableElementFactory new elementClass: XMLDOMTypedElement);
		parseDocument.
	modelDom := (dom // 'ModelVersion') first.
	visitor := DemoFormetisXmlVisitor new.
	modelDom
		ifNil: [ modelDom := (dom // 'DemoModelVersion') first.
			modelDom ifNil: [ modelDom := (dom // 'DemoModel') first ].
			visitor := DemoXmlVisitor new ].
	XMLDOMElementVisitor new
		elementVisitor: visitor;
		visit: modelDom.
	^ visitor
		resolve;
		model