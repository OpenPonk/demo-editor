reading
readModelVersionStream: aStream
	| dom visitor |
	dom := (XMLDOMParser on: aStream)
		nodeFactory: (XMLPluggableElementFactory new elementClass: XMLDOMTypedElement);
		parseDocument.
	visitor := DemoXmlVisitor new.
	XMLDOMElementVisitor new
		elementVisitor: visitor;
		visit: dom.
	^ visitor
		resolve;
		model