reading
readStream: aStream
	| outerDom dom modelDom dataElement visitor |
	outerDom := XMLDOMParser parse: aStream usingNamespaces: false.
	dataElement := (outerDom // 'DesignerData' // 'd2p1:Data') first.
	dom := (XMLDOMParser on: dataElement stringValue)
		nodeFactory: (XMLPluggableElementFactory new elementClass: XMLDOMTypedElement);
		parseDocument.
	modelDom := (dom // 'DemoModel') first.
	visitor := DemoFormetisXmlVisitor new.
	XMLDOMElementVisitor new
		elementVisitor: visitor;
		visit: modelDom.
	^ visitor
		resolve;
		model