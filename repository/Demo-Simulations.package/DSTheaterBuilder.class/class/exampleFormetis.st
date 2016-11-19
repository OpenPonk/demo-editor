as yet unclassified
exampleFormetis
| dom d m theater |
dom ifNil: [ 
	d := XMLDocument allInstances last.
	m := (d // 'ModelVersion') first.
	dom := (XMLDOMParser on: m prettyPrinted readStream)
		nodeFactory: (XMLPluggableElementFactory new elementClass: XMLDOMTypedElement);
		parseDocument.
].

"theater := DSTheaterBuilder new
	modelFromFile: 'D:\OpenPonk\demo-xml\Pizzeria.xml' asFileReference;
	roleAssignmentsFromFile: 'D:\OpenPonk\d4b\pizza-play\roles.csv';
	linesFromFile: 'D:\OpenPonk\d4b\pizza-play\lines.csv';
	linesFromFile: 'D:\OpenPonk\d4b\pizza-play\lines.json';
	asFileReference;
	build"

"
DemoXmlInterchange readStream: d prettyPrinted readStream
"

theater := DSTheaterBuilder new
	modelFromString: d prettyPrinted;
	build.

theater enableControl.
theater view canvas camera scale: 0.7.

"
x := STON toString: (theater instVarNamed: #actorLines).
"


theater view @ RTEmptyViewContextInteraction @ RTDraggableView.
"theater play."