*Demo-Editor
exampleOCD
	<example:'DynaCASE example DEMO-OCD'>
	| project ocd soi transaction |
	project := DCProject new projectName: 'Example DEMO-OCD'.
	ocd := OcdDiagram new name: 'OCD Diagram'.
	project addDiagram: ocd.
	soi :=  OcdSoi new.
	transaction := OcdTransaction new.
	ocd
		add: soi;
		add: transaction.
	^ self openProject: project