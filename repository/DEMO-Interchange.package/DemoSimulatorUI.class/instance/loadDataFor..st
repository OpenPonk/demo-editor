actions
loadDataFor: aDemoModel
	| storage generator |
	storage := DemoSimulationDataStorage default.
	generator := DSRandomAssignmentGenerator new.
	lines := storage
		linesFor: aDemoModel uuid
		ifAbsentPut: [ generator randomLinesFor: aDemoModel ].
	actors := storage
		actorsFor: aDemoModel uuid
		ifAbsentPut:
			[ DSRoleAssignmentsReader new toString: (generator randomRoleAssignmentsFor: aDemoModel) ].
	script := storage scriptFor: aDemoModel uuid ifAbsentPut: [ '' ]