as yet unclassified
play
	<script: 'self new play'>
	| pizzaPlay theater |
	pizzaPlay := DSPizzaPlay new.
	theater := DSTheaterBuilder new
		modelFromString: pizzaPlay modelXml;
		roleAssignmentsFromString: pizzaPlay roleAssignmentsCsv;
		linesFromString: pizzaPlay linesCsv;
		build.
	theater enableControl.
	theater view canvas camera scale: 0.7.
	theater view @ RTDraggableView @ RTZoomableView.
	theater play