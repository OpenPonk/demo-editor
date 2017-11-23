playing
play
	<script: 'self new play'>
	| pizzaPlay model theater w actors lines |
	model := DemoXmlInterchange readStream: self modelXml readStream.
	actors := DemoSimulationDataStorage default
		actorsAt: model uuid
		put: (DSRoleAssignmentsReader readStream: self roleAssignmentsCsv readStream).
	lines := DemoSimulationDataStorage default
		linesAt: model uuid
		put: (DSLinesCsvConverter new fromString: self linesCsv).
	pizzaPlay := DSPizzaPlay new.
	theater := DSTheaterBuilder new
		model: model;
		roleAssignments: actors;
		lines: lines;
		build.
	theater enableControl.
	w := theater play.
	w extent: 800 @ 800