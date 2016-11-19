as yet unclassified
examplePizzaPlay
	"theater := DSTheaterBuilder new
	modelFromFile: 'D:\OpenPonk\demo-xml\Pizzeria.xml' asFileReference;
	roleAssignmentsFromFile: 'D:\OpenPonk\d4b\pizza-play\roles.csv';
	linesFromFile: 'D:\OpenPonk\d4b\pizza-play\lines.csv';
	linesFromFile: 'D:\OpenPonk\d4b\pizza-play\lines.json';
	asFileReference;
	build"

| pizzaPlay theater x |
pizzaPlay := DSPizzaPlay new.

theater := DSTheaterBuilder new
	modelFromString: pizzaPlay modelXml;
	roleAssignmentsFromString: pizzaPlay roleAssignmentsCsv;
	linesFromString: pizzaPlay linesCsv;
"	linesFromString: pizzaPlay linesJson;"
	build.

"theater actorLines: (STON fromString: x)."
theater enableControl.
theater view canvas camera scale: 0.7.

"
x := STON toString: (theater instVarNamed: #actorLines).
"


theater view @ RTEmptyViewContextInteraction @ RTDraggableView.
"theater play."